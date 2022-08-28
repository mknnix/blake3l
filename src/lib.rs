use std::ffi;

// low layer hash function direct call to assembly.
// input and output in one place, caller needs read first 32 bytes
extern "C" {
    #[cfg(target_os="x86_64")]
    #[link(kind="static", name="blake3l_x64")]
    pub unsafe fn blake3_compress_in_place_avx512(
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
    fn it_works() {
        blake3_compress_in_place_avx512();
        let result = 2 + 2;
        assert_eq!(result, 4);
    }
}
