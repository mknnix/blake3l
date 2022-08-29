use std::ffi;

// low layer hash function direct call to assembly.
// input and output in one place, caller needs read first 32 bytes

pub fn avx512() -> bool {
    is_x86_feature_detected!("avx512f") && is_x86_feature_detected!("avx512vl")
}
pub fn avx2() -> bool {
    is_x86_feature_detected!("avx2")
}
pub fn sse41() -> bool {
    is_x86_feature_detected!("sse4.1")
}
pub fn sse2() -> bool {
    is_x86_feature_detected!("sse2")
}

use std::ffi::{c_void, CString};

#[repr(C)]
#[derive(Copy, Clone)]
pub struct blake3_chunk_state {
    pub cv: [u32; 8],
    pub chunk_counter: u64,
    pub buf: [u8; 64],
    pub buf_len: u8,
    pub blocks_compressed: u8,
    pub flags: u8,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct blake3_hasher {
    pub key: [u32; 8usize],
    pub chunk: blake3_chunk_state,
    pub cv_stack_len: u8,
    pub cv_stack: [u8; 1728usize],
}

#[cfg(all(
    target_os="x86_64",
    target_feature="avx2",
    target_feature="sse4.1"
))]
#[link(kind="static", name="blake3l_x64_avx2")]
extern "C" {
    pub unsafe fn blake3l_x64_sse41(
        cv: *mut u32,
        block: *const u8,
        block_len: u8,
        counter: u64,
        flags: u8,
    );
}

#[cfg(target_os="x86_64")]
pub unsafe fn blake3l_x64(data: *mut [u8]) {
    // TODO
}

#[cfg(target_os="aarch64")]
pub unsafe fn blake3l_arm64(data: *mut [u8]) {
    //TODO
}

#[cfg(test)]
mod tests {
    #[test]
    fn sse41() {
        let input = [0u8; 1024];
        blake3l_x64_sse41(
            512.as_ptr(),

        );
    }
}
