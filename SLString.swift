extension String {
    
    func copyTo<T>(tuple: inout T) {
        
        let tupleSize = MemoryLayout.size(ofValue: tuple)
        
        let size = min(count, tupleSize)

        var cStr = utf8CString

        withUnsafeMutablePointer(to: &tuple) { (pTuple) in
            
            let pRawTuple = UnsafeMutableRawPointer(pTuple)
            
            withUnsafePointer(to: &cStr[0]) { (pString) in
                
                let pRawString = UnsafeRawPointer(pString)
                
                pRawTuple.copyMemory(from: pRawString, byteCount: size)
            }
        }
    }
}
