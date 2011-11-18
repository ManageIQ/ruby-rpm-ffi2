module RPM

  module FFI

    TransFlags = enum(:rpmtransFlags_e, [
      :none, 0,
      :test, (1 << 0),
      :build_probs, (1 << 1),
      :noscripts, (1 << 2),
      :justdb, (1 << 3),
      :notriggers, (1 << 4),
      :nodocs, (1 << 5),
      :allfiles, (1 << 6),
      # bit 7 unused
      :nocontexts, (1 << 8),
      # bits 9-15 unused
      :notriggerprein, (1 << 16),
      :nopre, (1 << 17),
      :nopost, (1 << 18),
      :notriggerin, (1 << 19),
      :notriggerun, (1 << 20),
      :nopreun, (1 << 21),
      :nopostun, (1 << 22),
      :notriggerpostun, (11 << 23),
      # bits 24-25 unused
      :nocollections, (1 << 26),
      :nomd5, (1 << 27),
      :nofiledigest, (1 << 27),
      # bits 28-29 unused
      :noconfigs, (1 << 30),
      :deploops, (1 << 31) ]
    )

    typedef :pointer, :rpmts
    typedef :pointer, :rpmps
    typedef :rpmFlags, :rpmtransFlags

    attach_function 'rpmtsCheck', [:rpmts], :int
    attach_function 'rpmtsOrder', [:rpmts], :int
    attach_function 'rpmtsRun', [:rpmts, :rpmps, :int], :int
    attach_function 'rpmtsLink', [:rpmts], :rpmts
    attach_function 'rpmtsCloseDB', [:rpmts], :int
    attach_function 'rpmtsOpenDB', [:rpmts, :int], :int
    attach_function 'rpmtsInitDB', [:rpmts, :int], :int
    attach_function 'rpmtsGetDBMode', [:rpmts], :int
    attach_function 'rpmtsSetDBMode', [:rpmts, :int], :int
    attach_function 'rpmtsRebuildDB', [:rpmts], :int
    attach_function 'rpmtsVerifyDB', [:rpmts], :int
    attach_function 'rpmtsInitIterator', [:rpmts, :rpmDbiTagVal, :pointer, :int], :pointer
    # ...
    attach_function 'rpmtsProblems', [:rpmts], :rpmps
    # more...
    attach_function 'rpmtsFree', [:rpmts], :pointer
    #..
    attach_function 'rpmtsSetNotifyCallback', [:rpmts, :rpmCallbackFunction, :rpmCallbackData], :int
    #...
    attach_function 'rpmtsRootDir', [:rpmts], :string
    attach_function 'rpmtsSetRootDir', [:rpmts, :string], :int
    #...
    attach_function 'rpmtsFlags', [:rpmts], :rpmtransFlags
    attach_function 'rpmtsSetFlags', [:rpmts, :rpmtransFlags], :rpmtransFlags
    #...
    attach_function 'rpmtsCreate', [], :rpmts
    attach_function 'rpmtsAddInstallElement', [:rpmts, :header, :fnpyKey, :int, :rpmRelocation], :int
    # ...    

  end
end