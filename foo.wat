(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 i32 i32 i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32) (result i32)))
  (type (;7;) (func (result i32)))
  (type (;8;) (func (param i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $proc_exit|wasi_snapshot_preview1 (type 0)))
  (import "wasi_snapshot_preview1" "fd_write" (func $fd_write|wasi_snapshot_preview1 (type 1)))
  (func $_start (type 2)
    (local i32)
    call $foo.main
    i32.const 0
    local.set 0
    local.get 0
    call $proc_exit|wasi_snapshot_preview1
    unreachable)
  (func $foo.main (type 2)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 8
    local.set 3
    local.get 2
    local.get 3
    i32.add
    local.set 4
    local.get 4
    call $foo.foo
    i32.const 16
    local.set 5
    local.get 2
    local.get 5
    i32.add
    local.set 6
    local.get 6
    global.set $__stack_pointer
    return)
  (func $foo.foo (type 0) (param i32)
    (local i32 i32)
    call $debug.print__anon_1096
    i32.const 5
    local.set 1
    local.get 0
    local.get 1
    i32.store offset=4
    i32.const 1048731
    local.set 2
    local.get 0
    local.get 2
    i32.store
    return)
  (func $debug.print__anon_1096 (type 2)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 32
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 1049708
    local.set 3
    local.get 3
    call $Thread.Mutex.lock
    local.get 2
    local.set 4
    local.get 4
    call $io.getStdErr
    local.get 2
    i32.load
    local.set 5
    local.get 2
    local.get 5
    i32.store offset=8
    i32.const 16
    local.set 6
    local.get 2
    local.get 6
    i32.add
    local.set 7
    local.get 7
    local.set 8
    i32.const 8
    local.set 9
    local.get 2
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.set 11
    local.get 8
    local.get 11
    call $fs.file.File.writer
    local.get 2
    i32.load offset=16
    local.set 12
    local.get 2
    local.get 12
    i32.store offset=24
    i32.const 24
    local.set 13
    local.get 2
    local.get 13
    i32.add
    local.set 14
    local.get 14
    local.set 15
    local.get 15
    call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.print__anon_1451
    local.set 16
    i32.const 0
    local.set 17
    i32.const 65535
    local.set 18
    local.get 16
    local.get 18
    i32.and
    local.set 19
    i32.const 65535
    local.set 20
    local.get 17
    local.get 20
    i32.and
    local.set 21
    local.get 19
    local.get 21
    i32.eq
    local.set 22
    i32.const 1
    local.set 23
    local.get 22
    local.get 23
    i32.and
    local.set 24
    block  ;; label = @1
      block  ;; label = @2
        local.get 24
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1049708
      local.set 25
      local.get 25
      call $Thread.Mutex.unlock
      i32.const 32
      local.set 26
      local.get 2
      local.get 26
      i32.add
      local.set 27
      local.get 27
      global.set $__stack_pointer
      return
    end
    i32.const 1049708
    local.set 28
    local.get 28
    call $Thread.Mutex.unlock
    i32.const 32
    local.set 29
    local.get 2
    local.get 29
    i32.add
    local.set 30
    local.get 30
    global.set $__stack_pointer
    return)
  (func $debug.assert (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    i32.const 1
    local.set 4
    local.get 0
    local.get 4
    i32.and
    local.set 5
    local.get 3
    local.get 5
    i32.store8 offset=15
    i32.const -1
    local.set 6
    local.get 0
    local.get 6
    i32.xor
    local.set 7
    i32.const 1
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    block  ;; label = @1
      local.get 9
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1048847
      local.set 10
      i32.const 24
      local.set 11
      i32.const 0
      local.set 12
      i32.const 1048968
      local.set 13
      local.get 10
      local.get 11
      local.get 12
      local.get 13
      call $builtin.default_panic
      unreachable
    end
    i32.const 16
    local.set 14
    local.get 3
    local.get 14
    i32.add
    local.set 15
    local.get 15
    global.set $__stack_pointer
    return)
  (func $builtin.default_panic (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 32
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 1
    i32.store offset=12
    local.get 6
    local.get 0
    i32.store offset=8
    local.get 6
    local.get 2
    i32.store offset=20
    local.get 6
    local.get 1
    i32.store offset=28
    local.get 6
    local.get 0
    i32.store offset=24
    i32.const 24
    local.set 7
    local.get 6
    local.get 7
    i32.add
    local.set 8
    local.get 8
    local.set 9
    local.get 9
    call $debug.print__anon_1099
    call $os.abort
    unreachable)
  (func $debug.print__anon_1099 (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 32
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    i32.const 1049708
    local.set 4
    local.get 4
    call $Thread.Mutex.lock
    local.get 3
    local.set 5
    local.get 5
    call $io.getStdErr
    local.get 3
    i32.load
    local.set 6
    local.get 3
    local.get 6
    i32.store offset=8
    i32.const 16
    local.set 7
    local.get 3
    local.get 7
    i32.add
    local.set 8
    local.get 8
    local.set 9
    i32.const 8
    local.set 10
    local.get 3
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.set 12
    local.get 9
    local.get 12
    call $fs.file.File.writer
    local.get 3
    i32.load offset=16
    local.set 13
    local.get 3
    local.get 13
    i32.store offset=24
    i32.const 24
    local.set 14
    local.get 3
    local.get 14
    i32.add
    local.set 15
    local.get 15
    local.set 16
    local.get 16
    local.get 0
    call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.print__anon_1452
    local.set 17
    i32.const 0
    local.set 18
    i32.const 65535
    local.set 19
    local.get 17
    local.get 19
    i32.and
    local.set 20
    i32.const 65535
    local.set 21
    local.get 18
    local.get 21
    i32.and
    local.set 22
    local.get 20
    local.get 22
    i32.eq
    local.set 23
    i32.const 1
    local.set 24
    local.get 23
    local.get 24
    i32.and
    local.set 25
    block  ;; label = @1
      block  ;; label = @2
        local.get 25
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1049708
      local.set 26
      local.get 26
      call $Thread.Mutex.unlock
      i32.const 32
      local.set 27
      local.get 3
      local.get 27
      i32.add
      local.set 28
      local.get 28
      global.set $__stack_pointer
      return
    end
    i32.const 1049708
    local.set 29
    local.get 29
    call $Thread.Mutex.unlock
    i32.const 32
    local.set 30
    local.get 3
    local.get 30
    i32.add
    local.set 31
    local.get 31
    global.set $__stack_pointer
    return)
  (func $os.abort (type 2)
    (local i32)
    unreachable
    i32.const 1
    local.set 0
    local.get 0
    call $os.exit
    unreachable)
  (func $Thread.Mutex.lock (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call $Thread.Mutex.SingleThreadedImpl.lock
    i32.const 16
    local.set 5
    local.get 3
    local.get 5
    i32.add
    local.set 6
    local.get 6
    global.set $__stack_pointer
    return)
  (func $io.getStdErr (type 0) (param i32)
    (local i32)
    call $io.getStdErrHandle
    local.set 1
    local.get 0
    local.get 1
    i32.store
    return)
  (func $fs.file.File.writer (type 4) (param i32 i32)
    (local i32)
    local.get 1
    i32.load
    local.set 2
    local.get 0
    local.get 2
    i32.store
    return)
  (func $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.print__anon_1451 (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 0
    call $fmt.format__anon_1591
    local.set 4
    local.get 3
    local.get 4
    i32.store16 offset=14
    local.get 3
    i32.load16_u offset=14
    local.set 5
    i32.const 16
    local.set 6
    local.get 3
    local.get 6
    i32.add
    local.set 7
    local.get 7
    global.set $__stack_pointer
    local.get 5
    return)
  (func $Thread.Mutex.unlock (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call $Thread.Mutex.SingleThreadedImpl.unlock
    i32.const 16
    local.set 5
    local.get 3
    local.get 5
    i32.add
    local.set 6
    local.get 6
    global.set $__stack_pointer
    return)
  (func $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.print__anon_1452 (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $fmt.format__anon_1602
    local.set 5
    local.get 4
    local.get 5
    i32.store16 offset=14
    local.get 4
    i32.load16_u offset=14
    local.set 6
    i32.const 16
    local.set 7
    local.get 4
    local.get 7
    i32.add
    local.set 8
    local.get 8
    global.set $__stack_pointer
    local.get 6
    return)
  (func $os.exit (type 0) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store8 offset=15
    i32.const 255
    local.set 4
    local.get 0
    local.get 4
    i32.and
    local.set 5
    local.get 5
    call $proc_exit|wasi_snapshot_preview1
    unreachable)
  (func $Thread.Mutex.SingleThreadedImpl.lock (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call $Thread.Mutex.SingleThreadedImpl.tryLock
    local.set 5
    i32.const -1
    local.set 6
    local.get 5
    local.get 6
    i32.xor
    local.set 7
    i32.const 1
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    block  ;; label = @1
      local.get 9
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1048847
      local.set 10
      i32.const 24
      local.set 11
      i32.const 0
      local.set 12
      i32.const 1049000
      local.set 13
      local.get 10
      local.get 11
      local.get 12
      local.get 13
      call $builtin.default_panic
      unreachable
    end
    i32.const 16
    local.set 14
    local.get 3
    local.get 14
    i32.add
    local.set 15
    local.get 15
    global.set $__stack_pointer
    return)
  (func $io.getStdErrHandle (type 7) (result i32)
    (local i32)
    i32.const 2
    local.set 0
    local.get 0
    return)
  (func $fmt.format__anon_1591 (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 4
    local.get 3
    local.get 4
    i32.store
    local.get 3
    i32.load
    local.set 5
    local.get 3
    local.get 5
    i32.store offset=8
    i32.const 1
    local.set 6
    i32.const 1
    local.set 7
    local.get 6
    local.get 7
    i32.and
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 9
      i32.const 11
      local.set 10
      local.get 9
      local.get 10
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    i32.const 8
    local.set 11
    local.get 3
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.set 13
    i32.const 1048835
    local.set 14
    i32.const 11
    local.set 15
    local.get 13
    local.get 14
    local.get 15
    call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeAll
    local.set 16
    i32.const 0
    local.set 17
    i32.const 65535
    local.set 18
    local.get 16
    local.get 18
    i32.and
    local.set 19
    i32.const 65535
    local.set 20
    local.get 17
    local.get 20
    i32.and
    local.set 21
    local.get 19
    local.get 21
    i32.ne
    local.set 22
    i32.const 1
    local.set 23
    local.get 22
    local.get 23
    i32.and
    local.set 24
    block  ;; label = @1
      local.get 24
      i32.eqz
      br_if 0 (;@1;)
      i32.const 16
      local.set 25
      local.get 3
      local.get 25
      i32.add
      local.set 26
      local.get 26
      global.set $__stack_pointer
      local.get 16
      return
    end
    i32.const 0
    local.set 27
    i32.const 16
    local.set 28
    local.get 3
    local.get 28
    i32.add
    local.set 29
    local.get 29
    global.set $__stack_pointer
    local.get 27
    return)
  (func $Thread.Mutex.SingleThreadedImpl.unlock (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 0
    i32.load8_u
    local.set 4
    local.get 4
    call $debug.assert
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 5
    i32.const 0
    local.set 6
    i32.const 1
    local.set 7
    local.get 6
    local.get 7
    i32.and
    local.set 8
    local.get 5
    local.get 8
    i32.store8
    i32.const 16
    local.set 9
    local.get 3
    local.get 9
    i32.add
    local.set 10
    local.get 10
    global.set $__stack_pointer
    return)
  (func $fmt.format__anon_1602 (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store offset=12
    local.get 1
    i32.load offset=4
    local.set 6
    local.get 1
    i32.load
    local.set 7
    i32.const 1048980
    local.set 8
    i32.const 3
    local.set 9
    local.get 7
    local.get 6
    local.get 8
    local.get 0
    local.get 9
    call $fmt.formatType__anon_1646
    local.set 10
    i32.const 0
    local.set 11
    i32.const 65535
    local.set 12
    local.get 10
    local.get 12
    i32.and
    local.set 13
    i32.const 65535
    local.set 14
    local.get 11
    local.get 14
    i32.and
    local.set 15
    local.get 13
    local.get 15
    i32.ne
    local.set 16
    i32.const 1
    local.set 17
    local.get 16
    local.get 17
    i32.and
    local.set 18
    block  ;; label = @1
      local.get 18
      i32.eqz
      br_if 0 (;@1;)
      i32.const 16
      local.set 19
      local.get 4
      local.get 19
      i32.add
      local.set 20
      local.get 20
      global.set $__stack_pointer
      local.get 10
      return
    end
    i32.const 0
    local.set 21
    i32.const 16
    local.set 22
    local.get 4
    local.get 22
    i32.add
    local.set 23
    local.get 23
    global.set $__stack_pointer
    local.get 21
    return)
  (func $Thread.Mutex.SingleThreadedImpl.tryLock (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 0
    i32.load8_u
    local.set 4
    i32.const 1
    local.set 5
    local.get 4
    local.get 5
    i32.and
    local.set 6
    block  ;; label = @1
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 7
      i32.const 16
      local.set 8
      local.get 3
      local.get 8
      i32.add
      local.set 9
      local.get 9
      global.set $__stack_pointer
      local.get 7
      return
    end
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 10
    i32.const 1
    local.set 11
    i32.const 1
    local.set 12
    local.get 11
    local.get 12
    i32.and
    local.set 13
    local.get 10
    local.get 13
    i32.store8
    i32.const 1
    local.set 14
    i32.const 16
    local.set 15
    local.get 3
    local.get 15
    i32.add
    local.set 16
    local.get 16
    global.set $__stack_pointer
    local.get 14
    return)
  (func $fs.file.File.write (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 16
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 3
    local.set 7
    local.get 2
    local.set 8
    local.get 6
    local.get 3
    i32.store offset=4
    local.get 6
    local.get 2
    i32.store
    local.get 1
    i32.load
    local.set 9
    i32.const 8
    local.set 10
    local.get 6
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.set 12
    local.get 12
    local.get 9
    local.get 8
    local.get 7
    call $os.write
    local.get 6
    i64.load offset=8
    local.set 13
    local.get 0
    local.get 13
    i64.store align=4
    i32.const 16
    local.set 14
    local.get 6
    local.get 14
    i32.add
    local.set 15
    local.get 15
    global.set $__stack_pointer
    return)
  (func $os.write (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 64
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 3
    local.set 7
    local.get 2
    local.set 8
    local.get 6
    local.get 1
    i32.store offset=12
    local.get 6
    local.get 3
    i32.store offset=20
    local.get 6
    local.get 2
    i32.store offset=16
    local.get 6
    local.get 8
    i32.store offset=24
    local.get 6
    local.get 7
    i32.store offset=28
    i32.const -1431655766
    local.set 9
    local.get 6
    local.get 9
    i32.store offset=36
    i32.const 24
    local.set 10
    local.get 6
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.set 12
    block  ;; label = @1
      block  ;; label = @2
        local.get 12
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1048737
      local.set 13
      i32.const 30
      local.set 14
      i32.const 0
      local.set 15
      i32.const 1049008
      local.set 16
      local.get 13
      local.get 14
      local.get 15
      local.get 16
      call $builtin.default_panic
      unreachable
    end
    i32.const 1
    local.set 17
    i32.const 24
    local.set 18
    local.get 6
    local.get 18
    i32.add
    local.set 19
    i32.const 36
    local.set 20
    local.get 6
    local.get 20
    i32.add
    local.set 21
    local.get 1
    local.get 19
    local.get 17
    local.get 21
    call $fd_write|wasi_snapshot_preview1
    local.set 22
    i32.const 65535
    local.set 23
    local.get 22
    local.get 23
    i32.and
    local.set 24
    i32.const 76
    local.set 25
    local.get 24
    local.get 25
    i32.gt_u
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 24
                                  br_table 1 (;@14;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 5 (;@10;) 0 (;@15;) 6 (;@9;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 7 (;@8;) 0 (;@15;) 8 (;@7;) 0 (;@15;) 4 (;@11;) 9 (;@6;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 2 (;@13;) 3 (;@12;) 10 (;@5;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 11 (;@4;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 12 (;@3;) 13 (;@2;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 14 (;@1;) 0 (;@15;)
                                end
                                local.get 6
                                local.get 22
                                i32.store16 offset=54
                                local.get 22
                                call $os.unexpectedErrno
                                local.set 26
                                local.get 6
                                local.get 26
                                i32.store16 offset=60
                                local.get 6
                                i64.load offset=56
                                local.set 27
                                local.get 0
                                local.get 27
                                i64.store align=4
                                i32.const 64
                                local.set 28
                                local.get 6
                                local.get 28
                                i32.add
                                local.set 29
                                local.get 29
                                global.set $__stack_pointer
                                return
                              end
                              local.get 6
                              i32.load offset=36
                              local.set 30
                              i32.const 0
                              local.set 31
                              local.get 6
                              local.get 31
                              i32.store16 offset=44
                              local.get 6
                              local.get 30
                              i32.store offset=40
                              local.get 6
                              i64.load offset=40
                              local.set 32
                              local.get 0
                              local.get 32
                              i64.store align=4
                              i32.const 64
                              local.set 33
                              local.get 6
                              local.get 33
                              i32.add
                              local.set 34
                              local.get 34
                              global.set $__stack_pointer
                              return
                            end
                            i32.const 1048847
                            local.set 35
                            i32.const 24
                            local.set 36
                            i32.const 0
                            local.set 37
                            i32.const 1049016
                            local.set 38
                            local.get 35
                            local.get 36
                            local.get 37
                            local.get 38
                            call $builtin.default_panic
                            unreachable
                          end
                          i32.const 1048847
                          local.set 39
                          i32.const 24
                          local.set 40
                          i32.const 0
                          local.set 41
                          i32.const 1049024
                          local.set 42
                          local.get 39
                          local.get 40
                          local.get 41
                          local.get 42
                          call $builtin.default_panic
                          unreachable
                        end
                        i32.const 1048847
                        local.set 43
                        i32.const 24
                        local.set 44
                        i32.const 0
                        local.set 45
                        i32.const 1049032
                        local.set 46
                        local.get 43
                        local.get 44
                        local.get 45
                        local.get 46
                        call $builtin.default_panic
                        unreachable
                      end
                      i32.const 1048847
                      local.set 47
                      i32.const 24
                      local.set 48
                      i32.const 0
                      local.set 49
                      i32.const 1049040
                      local.set 50
                      local.get 47
                      local.get 48
                      local.get 49
                      local.get 50
                      call $builtin.default_panic
                      unreachable
                    end
                    i32.const 0
                    local.set 51
                    local.get 51
                    i64.load offset=1049048 align=4
                    local.set 52
                    local.get 0
                    local.get 52
                    i64.store align=4
                    i32.const 64
                    local.set 53
                    local.get 6
                    local.get 53
                    i32.add
                    local.set 54
                    local.get 54
                    global.set $__stack_pointer
                    return
                  end
                  i32.const 1048847
                  local.set 55
                  i32.const 24
                  local.set 56
                  i32.const 0
                  local.set 57
                  i32.const 1049056
                  local.set 58
                  local.get 55
                  local.get 56
                  local.get 57
                  local.get 58
                  call $builtin.default_panic
                  unreachable
                end
                i32.const 0
                local.set 59
                local.get 59
                i64.load offset=1049064 align=4
                local.set 60
                local.get 0
                local.get 60
                i64.store align=4
                i32.const 64
                local.set 61
                local.get 6
                local.get 61
                i32.add
                local.set 62
                local.get 62
                global.set $__stack_pointer
                return
              end
              i32.const 0
              local.set 63
              local.get 63
              i64.load offset=1049072 align=4
              local.set 64
              local.get 0
              local.get 64
              i64.store align=4
              i32.const 64
              local.set 65
              local.get 6
              local.get 65
              i32.add
              local.set 66
              local.get 66
              global.set $__stack_pointer
              return
            end
            i32.const 0
            local.set 67
            local.get 67
            i64.load offset=1049080 align=4
            local.set 68
            local.get 0
            local.get 68
            i64.store align=4
            i32.const 64
            local.set 69
            local.get 6
            local.get 69
            i32.add
            local.set 70
            local.get 70
            global.set $__stack_pointer
            return
          end
          i32.const 0
          local.set 71
          local.get 71
          i64.load offset=1049088 align=4
          local.set 72
          local.get 0
          local.get 72
          i64.store align=4
          i32.const 64
          local.set 73
          local.get 6
          local.get 73
          i32.add
          local.set 74
          local.get 74
          global.set $__stack_pointer
          return
        end
        i32.const 0
        local.set 75
        local.get 75
        i64.load offset=1049096 align=4
        local.set 76
        local.get 0
        local.get 76
        i64.store align=4
        i32.const 64
        local.set 77
        local.get 6
        local.get 77
        i32.add
        local.set 78
        local.get 78
        global.set $__stack_pointer
        return
      end
      i32.const 0
      local.set 79
      local.get 79
      i64.load offset=1049104 align=4
      local.set 80
      local.get 0
      local.get 80
      i64.store align=4
      i32.const 64
      local.set 81
      local.get 6
      local.get 81
      i32.add
      local.set 82
      local.get 82
      global.set $__stack_pointer
      return
    end
    i32.const 0
    local.set 83
    local.get 83
    i64.load offset=1049112 align=4
    local.set 84
    local.get 0
    local.get 84
    i64.store align=4
    i32.const 64
    local.set 85
    local.get 6
    local.get 85
    i32.add
    local.set 86
    local.get 86
    global.set $__stack_pointer
    return)
  (func $os.unexpectedErrno (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store16 offset=6
    local.get 3
    local.get 0
    i32.store16 offset=8
    i32.const 8
    local.set 4
    local.get 3
    local.get 4
    i32.add
    local.set 5
    local.get 5
    local.set 6
    local.get 6
    call $debug.print__anon_2362
    i32.const 1049236
    local.set 7
    local.get 7
    call $debug.dumpCurrentStackTrace
    i32.const 13
    local.set 8
    i32.const 16
    local.set 9
    local.get 3
    local.get 9
    i32.add
    local.set 10
    local.get 10
    global.set $__stack_pointer
    local.get 8
    return)
  (func $builtin.panicStartGreaterThanEnd (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=8
    local.get 4
    local.get 1
    i32.store offset=12
    local.get 4
    local.get 0
    i32.store offset=16
    local.get 4
    local.get 1
    i32.store offset=20
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store offset=24
    i32.const 1
    local.set 6
    local.get 4
    local.get 6
    i32.store8 offset=28
    i32.const 0
    local.set 7
    i32.const 24
    local.set 8
    local.get 4
    local.get 8
    i32.add
    local.set 9
    local.get 9
    local.set 10
    i32.const 16
    local.set 11
    local.get 4
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.set 13
    local.get 7
    local.get 10
    local.get 13
    call $debug.panicExtra__anon_1652
    unreachable)
  (func $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeAll (type 8) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 64
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 2
    local.set 6
    local.get 1
    local.set 7
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    i32.const 0
    local.set 8
    local.get 5
    local.get 8
    i32.store offset=20
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=20
        local.set 9
        local.get 9
        local.set 10
        local.get 6
        local.set 11
        local.get 10
        local.get 11
        i32.ne
        local.set 12
        i32.const 1
        local.set 13
        local.get 12
        local.get 13
        i32.and
        local.set 14
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 14
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                i32.load offset=20
                local.set 15
                local.get 0
                i32.load
                local.set 16
                local.get 5
                local.get 16
                i32.store offset=24
                local.get 5
                i32.load offset=24
                local.set 17
                local.get 5
                local.get 17
                i32.store offset=32
                local.get 5
                local.get 6
                i32.store offset=44
                local.get 5
                local.get 7
                i32.store offset=40
                local.get 5
                i32.load offset=20
                local.set 18
                local.get 5
                i32.load offset=44
                local.set 19
                local.get 5
                i32.load offset=40
                local.set 20
                local.get 20
                local.get 18
                i32.add
                local.set 21
                local.get 18
                local.set 22
                local.get 19
                local.set 23
                local.get 22
                local.get 23
                i32.le_u
                local.set 24
                i32.const 1
                local.set 25
                local.get 24
                local.get 25
                i32.and
                local.set 26
                local.get 26
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              br 4 (;@1;)
            end
            br 1 (;@3;)
          end
          local.get 18
          local.get 19
          call $builtin.panicStartGreaterThanEnd
          unreachable
        end
        local.get 19
        local.get 18
        i32.sub
        local.set 27
        local.get 19
        local.set 28
        local.get 19
        local.set 29
        local.get 28
        local.get 29
        i32.le_u
        local.set 30
        i32.const 1
        local.set 31
        local.get 30
        local.get 31
        i32.and
        local.set 32
        block  ;; label = @3
          block  ;; label = @4
            local.get 32
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          local.get 19
          local.get 19
          call $builtin.panicOutOfBounds
          unreachable
        end
        local.get 18
        local.set 33
        local.get 19
        local.set 34
        local.get 33
        local.get 34
        i32.le_u
        local.set 35
        i32.const 1
        local.set 36
        local.get 35
        local.get 36
        i32.and
        local.set 37
        block  ;; label = @3
          block  ;; label = @4
            local.get 37
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          local.get 18
          local.get 19
          call $builtin.panicOutOfBounds
          unreachable
        end
        local.get 27
        local.set 38
        local.get 21
        local.set 39
        i32.const 48
        local.set 40
        local.get 5
        local.get 40
        i32.add
        local.set 41
        local.get 41
        local.set 42
        i32.const 32
        local.set 43
        local.get 5
        local.get 43
        i32.add
        local.set 44
        local.get 44
        local.set 45
        local.get 42
        local.get 45
        local.get 39
        local.get 38
        call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.write
        local.get 5
        i32.load16_u offset=52
        local.set 46
        i32.const 0
        local.set 47
        i32.const 65535
        local.set 48
        local.get 46
        local.get 48
        i32.and
        local.set 49
        i32.const 65535
        local.set 50
        local.get 47
        local.get 50
        i32.and
        local.set 51
        local.get 49
        local.get 51
        i32.ne
        local.set 52
        i32.const 1
        local.set 53
        local.get 52
        local.get 53
        i32.and
        local.set 54
        block  ;; label = @3
          local.get 54
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load16_u offset=52
          local.set 55
          i32.const 64
          local.set 56
          local.get 5
          local.get 56
          i32.add
          local.set 57
          local.get 57
          global.set $__stack_pointer
          local.get 55
          return
        end
        local.get 5
        i32.load offset=48
        local.set 58
        local.get 15
        local.get 58
        i32.add
        local.set 59
        local.get 59
        local.get 15
        i32.lt_u
        local.set 60
        local.get 5
        local.get 59
        i32.store offset=56
        i32.const 1
        local.set 61
        local.get 60
        local.get 61
        i32.and
        local.set 62
        local.get 5
        local.get 62
        i32.store8 offset=60
        local.get 5
        i32.load8_u offset=60
        local.set 63
        i32.const 0
        local.set 64
        i32.const 1
        local.set 65
        local.get 63
        local.get 65
        i32.and
        local.set 66
        i32.const 1
        local.set 67
        local.get 64
        local.get 67
        i32.and
        local.set 68
        local.get 66
        local.get 68
        i32.eq
        local.set 69
        i32.const 1
        local.set 70
        local.get 69
        local.get 70
        i32.and
        local.set 71
        block  ;; label = @3
          block  ;; label = @4
            local.get 71
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 1048669
          local.set 72
          i32.const 16
          local.set 73
          i32.const 0
          local.set 74
          i32.const 1049120
          local.set 75
          local.get 72
          local.get 73
          local.get 74
          local.get 75
          call $builtin.default_panic
          unreachable
        end
        local.get 5
        i32.load offset=56
        local.set 76
        local.get 5
        local.get 76
        i32.store offset=20
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 77
    i32.const 64
    local.set 78
    local.get 5
    local.get 78
    i32.add
    local.set 79
    local.get 79
    global.set $__stack_pointer
    local.get 77
    return)
  (func $debug.panicExtra__anon_1652 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 4160
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=8
    i32.const 1048872
    local.set 6
    local.get 5
    local.get 6
    i32.store offset=12
    i32.const 4111
    local.set 7
    i32.const 170
    local.set 8
    i32.const 17
    local.set 9
    local.get 5
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.get 8
    local.get 7
    call $memset
    drop
    i32.const 17
    local.set 11
    local.get 5
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.set 13
    i32.const 1
    local.set 14
    i32.const 1
    local.set 15
    local.get 14
    local.get 15
    i32.and
    local.set 16
    block  ;; label = @1
      block  ;; label = @2
        local.get 16
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 17
      i32.const 4096
      local.set 18
      local.get 17
      local.get 18
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    i32.const 4096
    local.set 19
    local.get 13
    local.set 20
    i32.const 4128
    local.set 21
    local.get 5
    local.get 21
    i32.add
    local.set 22
    local.get 22
    local.set 23
    local.get 23
    local.get 20
    local.get 19
    local.get 2
    call $fmt.bufPrint__anon_2367
    local.get 5
    i32.load16_u offset=4136
    local.set 24
    i32.const 0
    local.set 25
    i32.const 65535
    local.set 26
    local.get 24
    local.get 26
    i32.and
    local.set 27
    i32.const 65535
    local.set 28
    local.get 25
    local.get 28
    i32.and
    local.set 29
    local.get 27
    local.get 29
    i32.eq
    local.set 30
    i32.const 1
    local.set 31
    local.get 30
    local.get 31
    i32.and
    local.set 32
    block  ;; label = @1
      block  ;; label = @2
        local.get 32
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=4132
        local.set 33
        local.get 5
        i32.load offset=4128
        local.set 34
        local.get 34
        local.set 35
        local.get 33
        local.set 36
        br 1 (;@1;)
      end
      local.get 5
      i32.load16_u offset=4136
      local.set 37
      i32.const 4
      local.set 38
      local.get 37
      local.get 38
      i32.eq
      local.set 39
      block  ;; label = @2
        local.get 39
        br_if 0 (;@2;)
        i32.const 1048811
        local.set 40
        i32.const 23
        local.set 41
        i32.const 0
        local.set 42
        i32.const 1049244
        local.set 43
        local.get 40
        local.get 41
        local.get 42
        local.get 43
        call $builtin.default_panic
        unreachable
      end
      i32.const 17
      local.set 44
      local.get 5
      local.get 44
      i32.add
      local.set 45
      local.get 45
      local.set 46
      i32.const 4096
      local.set 47
      local.get 46
      local.get 47
      i32.add
      local.set 48
      i32.const 1
      local.set 49
      i32.const 1
      local.set 50
      local.get 49
      local.get 50
      i32.and
      local.set 51
      block  ;; label = @2
        block  ;; label = @3
          local.get 51
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 4096
        local.set 52
        i32.const 4111
        local.set 53
        local.get 52
        local.get 53
        call $builtin.panicStartGreaterThanEnd
        unreachable
      end
      i32.const 15
      local.set 54
      local.get 48
      local.set 55
      i32.const 1048872
      local.set 56
      i32.const 15
      local.set 57
      local.get 55
      local.get 54
      local.get 56
      local.get 57
      call $mem.copy__anon_2368
      i32.const 17
      local.set 58
      local.get 5
      local.get 58
      i32.add
      local.set 59
      local.get 59
      local.set 60
      local.get 60
      local.set 61
      local.get 61
      local.set 62
      i32.const 4111
      local.set 63
      local.get 62
      local.set 64
      local.get 64
      local.set 35
      local.get 63
      local.set 36
    end
    local.get 36
    local.set 65
    local.get 35
    local.set 66
    local.get 5
    local.get 66
    i32.store offset=4144
    local.get 5
    local.get 65
    i32.store offset=4148
    local.get 5
    local.get 65
    i32.store offset=4156
    local.get 5
    local.get 66
    i32.store offset=4152
    local.get 5
    i32.load offset=4156
    local.set 67
    local.get 5
    i32.load offset=4152
    local.set 68
    local.get 68
    local.get 67
    local.get 0
    local.get 1
    call $builtin.default_panic
    unreachable)
  (func $builtin.panicOutOfBounds (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=8
    local.get 4
    local.get 1
    i32.store offset=12
    local.get 4
    local.get 0
    i32.store offset=16
    local.get 4
    local.get 1
    i32.store offset=20
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store offset=24
    i32.const 1
    local.set 6
    local.get 4
    local.get 6
    i32.store8 offset=28
    i32.const 0
    local.set 7
    i32.const 24
    local.set 8
    local.get 4
    local.get 8
    i32.add
    local.set 9
    local.get 9
    local.set 10
    i32.const 16
    local.set 11
    local.get 4
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.set 13
    local.get 7
    local.get 10
    local.get 13
    call $debug.panicExtra__anon_2364
    unreachable)
  (func $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.write (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 16
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 3
    local.set 7
    local.get 2
    local.set 8
    local.get 6
    local.get 3
    i32.store offset=4
    local.get 6
    local.get 2
    i32.store
    i32.const 8
    local.set 9
    local.get 6
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.set 11
    local.get 11
    local.get 1
    local.get 8
    local.get 7
    call $fs.file.File.write
    local.get 6
    i64.load offset=8
    local.set 12
    local.get 0
    local.get 12
    i64.store align=4
    i32.const 16
    local.set 13
    local.get 6
    local.get 13
    i32.add
    local.set 14
    local.get 14
    global.set $__stack_pointer
    return)
  (func $fmt.formatType__anon_1646 (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 5
    i32.const 48
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    local.get 7
    global.set $__stack_pointer
    local.get 1
    local.set 8
    local.get 0
    local.set 9
    local.get 7
    local.get 1
    i32.store offset=12
    local.get 7
    local.get 0
    i32.store offset=8
    local.get 7
    local.get 4
    i32.store offset=20
    i32.const 1
    local.set 10
    local.get 7
    local.get 10
    i32.store offset=28
    i32.const 1048976
    local.set 11
    local.get 7
    local.get 11
    i32.store offset=24
    block  ;; label = @1
      local.get 4
      br_if 0 (;@1;)
      local.get 3
      i32.load
      local.set 12
      local.get 7
      local.get 12
      i32.store offset=40
      i32.const 40
      local.set 13
      local.get 7
      local.get 13
      i32.add
      local.set 14
      local.get 14
      local.set 15
      i32.const 1048661
      local.set 16
      i32.const 7
      local.set 17
      local.get 15
      local.get 16
      local.get 17
      call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeAll
      local.set 18
      local.get 7
      local.get 18
      i32.store16 offset=38
      local.get 7
      i32.load16_u offset=38
      local.set 19
      i32.const 48
      local.set 20
      local.get 7
      local.get 20
      i32.add
      local.set 21
      local.get 21
      global.set $__stack_pointer
      local.get 19
      return
    end
    local.get 9
    local.get 8
    local.get 2
    local.get 3
    call $fmt.formatBuf__anon_2035
    local.set 22
    local.get 7
    local.get 22
    i32.store16 offset=46
    local.get 7
    i32.load16_u offset=46
    local.set 23
    i32.const 48
    local.set 24
    local.get 7
    local.get 24
    i32.add
    local.set 25
    local.get 25
    global.set $__stack_pointer
    local.get 23
    return)
  (func $fmt.formatBuf__anon_2035 (type 1) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 144
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 1
    local.set 7
    local.get 0
    local.set 8
    local.get 6
    local.get 1
    i32.store offset=4
    local.get 6
    local.get 0
    i32.store
    i32.const 8
    local.set 9
    local.get 2
    local.get 9
    i32.add
    local.set 10
    local.get 10
    i64.load align=4
    local.set 11
    local.get 6
    local.get 11
    i64.store offset=8
    local.get 6
    i32.load8_u offset=12
    local.set 12
    i32.const 0
    local.set 13
    i32.const 255
    local.set 14
    local.get 12
    local.get 14
    i32.and
    local.set 15
    i32.const 255
    local.set 16
    local.get 13
    local.get 16
    i32.and
    local.set 17
    local.get 15
    local.get 17
    i32.ne
    local.set 18
    i32.const 1
    local.set 19
    local.get 18
    local.get 19
    i32.and
    local.set 20
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 20
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  i32.load offset=8
                  local.set 21
                  local.get 6
                  local.get 21
                  i32.store offset=20
                  i32.const 24
                  local.set 22
                  local.get 6
                  local.get 22
                  i32.add
                  local.set 23
                  local.get 23
                  local.set 24
                  local.get 24
                  local.get 8
                  local.get 7
                  call $unicode.utf8CountCodepoints
                  local.get 6
                  i32.load16_u offset=28
                  local.set 25
                  i32.const 0
                  local.set 26
                  i32.const 65535
                  local.set 27
                  local.get 25
                  local.get 27
                  i32.and
                  local.set 28
                  i32.const 65535
                  local.set 29
                  local.get 26
                  local.get 29
                  i32.and
                  local.set 30
                  local.get 28
                  local.get 30
                  i32.eq
                  local.set 31
                  i32.const 1
                  local.set 32
                  local.get 31
                  local.get 32
                  i32.and
                  local.set 33
                  local.get 33
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                local.get 3
                i32.load
                local.set 34
                local.get 6
                local.get 34
                i32.store offset=136
                i32.const 136
                local.set 35
                local.get 6
                local.get 35
                i32.add
                local.set 36
                local.get 36
                local.set 37
                local.get 37
                local.get 8
                local.get 7
                call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeAll
                local.set 38
                i32.const 0
                local.set 39
                i32.const 65535
                local.set 40
                local.get 38
                local.get 40
                i32.and
                local.set 41
                i32.const 65535
                local.set 42
                local.get 39
                local.get 42
                i32.and
                local.set 43
                local.get 41
                local.get 43
                i32.ne
                local.set 44
                i32.const 1
                local.set 45
                local.get 44
                local.get 45
                i32.and
                local.set 46
                local.get 46
                br_if 3 (;@3;)
                br 4 (;@2;)
              end
              local.get 6
              i32.load offset=24
              local.set 47
              local.get 47
              local.set 48
              br 1 (;@4;)
            end
            local.get 7
            local.set 48
          end
          local.get 48
          local.set 49
          local.get 6
          local.get 49
          i32.store offset=36
          local.get 49
          local.set 50
          local.get 21
          local.set 51
          local.get 50
          local.get 51
          i32.lt_u
          local.set 52
          i32.const 1
          local.set 53
          local.get 52
          local.get 53
          i32.and
          local.set 54
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 54
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 21
                    local.get 49
                    i32.sub
                    local.set 55
                    local.get 55
                    local.get 21
                    i32.gt_u
                    local.set 56
                    local.get 6
                    local.get 55
                    i32.store offset=40
                    i32.const 1
                    local.set 57
                    local.get 56
                    local.get 57
                    i32.and
                    local.set 58
                    local.get 6
                    local.get 58
                    i32.store8 offset=44
                    local.get 6
                    i32.load8_u offset=44
                    local.set 59
                    i32.const 0
                    local.set 60
                    i32.const 1
                    local.set 61
                    local.get 59
                    local.get 61
                    i32.and
                    local.set 62
                    i32.const 1
                    local.set 63
                    local.get 60
                    local.get 63
                    i32.and
                    local.set 64
                    local.get 62
                    local.get 64
                    i32.eq
                    local.set 65
                    i32.const 1
                    local.set 66
                    local.get 65
                    local.get 66
                    i32.and
                    local.set 67
                    local.get 67
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                  i32.const 0
                  local.set 68
                  local.get 68
                  local.set 69
                  br 3 (;@4;)
                end
                br 1 (;@5;)
              end
              i32.const 1048669
              local.set 70
              i32.const 16
              local.set 71
              i32.const 0
              local.set 72
              i32.const 1049212
              local.set 73
              local.get 70
              local.get 71
              local.get 72
              local.get 73
              call $builtin.default_panic
              unreachable
            end
            local.get 6
            i32.load offset=40
            local.set 74
            local.get 74
            local.set 69
          end
          local.get 69
          local.set 75
          local.get 6
          local.get 75
          i32.store offset=48
          block  ;; label = @4
            local.get 75
            br_if 0 (;@4;)
            local.get 3
            i32.load
            local.set 76
            local.get 6
            local.get 76
            i32.store offset=56
            i32.const 56
            local.set 77
            local.get 6
            local.get 77
            i32.add
            local.set 78
            local.get 78
            local.set 79
            local.get 79
            local.get 8
            local.get 7
            call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeAll
            local.set 80
            local.get 6
            local.get 80
            i32.store16 offset=54
            local.get 6
            i32.load16_u offset=54
            local.set 81
            i32.const 144
            local.set 82
            local.get 6
            local.get 82
            i32.add
            local.set 83
            local.get 83
            global.set $__stack_pointer
            local.get 81
            return
          end
          local.get 2
          i32.load8_u offset=16
          local.set 84
          i32.const 2
          local.set 85
          local.get 84
          local.get 85
          i32.add
          local.set 86
          i32.const 3
          local.set 87
          local.get 86
          local.get 87
          i32.and
          local.set 88
          i32.const 0
          local.set 89
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 89
                    br_if 0 (;@8;)
                    local.get 88
                    br_table 3 (;@5;) 0 (;@8;) 1 (;@7;) 2 (;@6;) 3 (;@5;)
                  end
                  i32.const 1048811
                  local.set 90
                  i32.const 23
                  local.set 91
                  i32.const 0
                  local.set 92
                  i32.const 1049228
                  local.set 93
                  local.get 90
                  local.get 91
                  local.get 92
                  local.get 93
                  call $builtin.default_panic
                  unreachable
                end
                local.get 3
                i32.load
                local.set 94
                local.get 6
                local.get 94
                i32.store offset=64
                i32.const 64
                local.set 95
                local.get 6
                local.get 95
                i32.add
                local.set 96
                local.get 96
                local.set 97
                local.get 97
                local.get 8
                local.get 7
                call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeAll
                local.set 98
                i32.const 0
                local.set 99
                i32.const 65535
                local.set 100
                local.get 98
                local.get 100
                i32.and
                local.set 101
                i32.const 65535
                local.set 102
                local.get 99
                local.get 102
                i32.and
                local.set 103
                local.get 101
                local.get 103
                i32.ne
                local.set 104
                i32.const 1
                local.set 105
                local.get 104
                local.get 105
                i32.and
                local.set 106
                block  ;; label = @7
                  local.get 106
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 144
                  local.set 107
                  local.get 6
                  local.get 107
                  i32.add
                  local.set 108
                  local.get 108
                  global.set $__stack_pointer
                  local.get 98
                  return
                end
                local.get 3
                i32.load
                local.set 109
                local.get 6
                local.get 109
                i32.store offset=72
                local.get 2
                i32.load8_u offset=17
                local.set 110
                i32.const 72
                local.set 111
                local.get 6
                local.get 111
                i32.add
                local.set 112
                local.get 112
                local.set 113
                local.get 113
                local.get 110
                local.get 75
                call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeByteNTimes
                local.set 114
                i32.const 0
                local.set 115
                i32.const 65535
                local.set 116
                local.get 114
                local.get 116
                i32.and
                local.set 117
                i32.const 65535
                local.set 118
                local.get 115
                local.get 118
                i32.and
                local.set 119
                local.get 117
                local.get 119
                i32.ne
                local.set 120
                i32.const 1
                local.set 121
                local.get 120
                local.get 121
                i32.and
                local.set 122
                block  ;; label = @7
                  local.get 122
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 144
                  local.set 123
                  local.get 6
                  local.get 123
                  i32.add
                  local.set 124
                  local.get 124
                  global.set $__stack_pointer
                  local.get 114
                  return
                end
                br 2 (;@4;)
              end
              i32.const 1
              local.set 125
              local.get 75
              local.get 125
              i32.shr_u
              local.set 126
              local.get 6
              local.get 126
              i32.store offset=76
              i32.const 1
              local.set 127
              local.get 75
              local.get 127
              i32.add
              local.set 128
              local.get 128
              i32.eqz
              local.set 129
              local.get 6
              local.get 128
              i32.store offset=80
              i32.const 1
              local.set 130
              local.get 129
              local.get 130
              i32.and
              local.set 131
              local.get 6
              local.get 131
              i32.store8 offset=84
              local.get 6
              i32.load8_u offset=84
              local.set 132
              i32.const 0
              local.set 133
              i32.const 1
              local.set 134
              local.get 132
              local.get 134
              i32.and
              local.set 135
              i32.const 1
              local.set 136
              local.get 133
              local.get 136
              i32.and
              local.set 137
              local.get 135
              local.get 137
              i32.eq
              local.set 138
              i32.const 1
              local.set 139
              local.get 138
              local.get 139
              i32.and
              local.set 140
              block  ;; label = @6
                block  ;; label = @7
                  local.get 140
                  i32.eqz
                  br_if 0 (;@7;)
                  br 1 (;@6;)
                end
                i32.const 1048669
                local.set 141
                i32.const 16
                local.set 142
                i32.const 0
                local.set 143
                i32.const 1049220
                local.set 144
                local.get 141
                local.get 142
                local.get 143
                local.get 144
                call $builtin.default_panic
                unreachable
              end
              local.get 6
              i32.load offset=80
              local.set 145
              i32.const 1
              local.set 146
              local.get 145
              local.get 146
              i32.shr_u
              local.set 147
              local.get 6
              local.get 147
              i32.store offset=92
              local.get 3
              i32.load
              local.set 148
              local.get 6
              local.get 148
              i32.store offset=96
              local.get 2
              i32.load8_u offset=17
              local.set 149
              i32.const 96
              local.set 150
              local.get 6
              local.get 150
              i32.add
              local.set 151
              local.get 151
              local.set 152
              local.get 152
              local.get 149
              local.get 126
              call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeByteNTimes
              local.set 153
              i32.const 0
              local.set 154
              i32.const 65535
              local.set 155
              local.get 153
              local.get 155
              i32.and
              local.set 156
              i32.const 65535
              local.set 157
              local.get 154
              local.get 157
              i32.and
              local.set 158
              local.get 156
              local.get 158
              i32.ne
              local.set 159
              i32.const 1
              local.set 160
              local.get 159
              local.get 160
              i32.and
              local.set 161
              block  ;; label = @6
                local.get 161
                i32.eqz
                br_if 0 (;@6;)
                i32.const 144
                local.set 162
                local.get 6
                local.get 162
                i32.add
                local.set 163
                local.get 163
                global.set $__stack_pointer
                local.get 153
                return
              end
              local.get 3
              i32.load
              local.set 164
              local.get 6
              local.get 164
              i32.store offset=104
              i32.const 104
              local.set 165
              local.get 6
              local.get 165
              i32.add
              local.set 166
              local.get 166
              local.set 167
              local.get 167
              local.get 8
              local.get 7
              call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeAll
              local.set 168
              i32.const 0
              local.set 169
              i32.const 65535
              local.set 170
              local.get 168
              local.get 170
              i32.and
              local.set 171
              i32.const 65535
              local.set 172
              local.get 169
              local.get 172
              i32.and
              local.set 173
              local.get 171
              local.get 173
              i32.ne
              local.set 174
              i32.const 1
              local.set 175
              local.get 174
              local.get 175
              i32.and
              local.set 176
              block  ;; label = @6
                local.get 176
                i32.eqz
                br_if 0 (;@6;)
                i32.const 144
                local.set 177
                local.get 6
                local.get 177
                i32.add
                local.set 178
                local.get 178
                global.set $__stack_pointer
                local.get 168
                return
              end
              local.get 3
              i32.load
              local.set 179
              local.get 6
              local.get 179
              i32.store offset=112
              local.get 2
              i32.load8_u offset=17
              local.set 180
              i32.const 112
              local.set 181
              local.get 6
              local.get 181
              i32.add
              local.set 182
              local.get 182
              local.set 183
              local.get 183
              local.get 180
              local.get 147
              call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeByteNTimes
              local.set 184
              i32.const 0
              local.set 185
              i32.const 65535
              local.set 186
              local.get 184
              local.get 186
              i32.and
              local.set 187
              i32.const 65535
              local.set 188
              local.get 185
              local.get 188
              i32.and
              local.set 189
              local.get 187
              local.get 189
              i32.ne
              local.set 190
              i32.const 1
              local.set 191
              local.get 190
              local.get 191
              i32.and
              local.set 192
              block  ;; label = @6
                local.get 192
                i32.eqz
                br_if 0 (;@6;)
                i32.const 144
                local.set 193
                local.get 6
                local.get 193
                i32.add
                local.set 194
                local.get 194
                global.set $__stack_pointer
                local.get 184
                return
              end
              br 1 (;@4;)
            end
            local.get 3
            i32.load
            local.set 195
            local.get 6
            local.get 195
            i32.store offset=120
            local.get 2
            i32.load8_u offset=17
            local.set 196
            i32.const 120
            local.set 197
            local.get 6
            local.get 197
            i32.add
            local.set 198
            local.get 198
            local.set 199
            local.get 199
            local.get 196
            local.get 75
            call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeByteNTimes
            local.set 200
            i32.const 0
            local.set 201
            i32.const 65535
            local.set 202
            local.get 200
            local.get 202
            i32.and
            local.set 203
            i32.const 65535
            local.set 204
            local.get 201
            local.get 204
            i32.and
            local.set 205
            local.get 203
            local.get 205
            i32.ne
            local.set 206
            i32.const 1
            local.set 207
            local.get 206
            local.get 207
            i32.and
            local.set 208
            block  ;; label = @5
              local.get 208
              i32.eqz
              br_if 0 (;@5;)
              i32.const 144
              local.set 209
              local.get 6
              local.get 209
              i32.add
              local.set 210
              local.get 210
              global.set $__stack_pointer
              local.get 200
              return
            end
            local.get 3
            i32.load
            local.set 211
            local.get 6
            local.get 211
            i32.store offset=128
            i32.const 128
            local.set 212
            local.get 6
            local.get 212
            i32.add
            local.set 213
            local.get 213
            local.set 214
            local.get 214
            local.get 8
            local.get 7
            call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeAll
            local.set 215
            i32.const 0
            local.set 216
            i32.const 65535
            local.set 217
            local.get 215
            local.get 217
            i32.and
            local.set 218
            i32.const 65535
            local.set 219
            local.get 216
            local.get 219
            i32.and
            local.set 220
            local.get 218
            local.get 220
            i32.ne
            local.set 221
            i32.const 1
            local.set 222
            local.get 221
            local.get 222
            i32.and
            local.set 223
            block  ;; label = @5
              local.get 223
              i32.eqz
              br_if 0 (;@5;)
              i32.const 144
              local.set 224
              local.get 6
              local.get 224
              i32.add
              local.set 225
              local.get 225
              global.set $__stack_pointer
              local.get 215
              return
            end
          end
          br 2 (;@1;)
        end
        i32.const 144
        local.set 226
        local.get 6
        local.get 226
        i32.add
        local.set 227
        local.get 227
        global.set $__stack_pointer
        local.get 38
        return
      end
    end
    i32.const 0
    local.set 228
    i32.const 144
    local.set 229
    local.get 6
    local.get 229
    i32.add
    local.set 230
    local.get 230
    global.set $__stack_pointer
    local.get 228
    return)
  (func $debug.print__anon_2362 (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 32
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    i32.const 1049708
    local.set 4
    local.get 4
    call $Thread.Mutex.lock
    local.get 3
    local.set 5
    local.get 5
    call $io.getStdErr
    local.get 3
    i32.load
    local.set 6
    local.get 3
    local.get 6
    i32.store offset=8
    i32.const 16
    local.set 7
    local.get 3
    local.get 7
    i32.add
    local.set 8
    local.get 8
    local.set 9
    i32.const 8
    local.set 10
    local.get 3
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.set 12
    local.get 9
    local.get 12
    call $fs.file.File.writer
    local.get 3
    i32.load offset=16
    local.set 13
    local.get 3
    local.get 13
    i32.store offset=24
    i32.const 24
    local.set 14
    local.get 3
    local.get 14
    i32.add
    local.set 15
    local.get 15
    local.set 16
    local.get 16
    local.get 0
    call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.print__anon_2371
    local.set 17
    i32.const 0
    local.set 18
    i32.const 65535
    local.set 19
    local.get 17
    local.get 19
    i32.and
    local.set 20
    i32.const 65535
    local.set 21
    local.get 18
    local.get 21
    i32.and
    local.set 22
    local.get 20
    local.get 22
    i32.eq
    local.set 23
    i32.const 1
    local.set 24
    local.get 23
    local.get 24
    i32.and
    local.set 25
    block  ;; label = @1
      block  ;; label = @2
        local.get 25
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1049708
      local.set 26
      local.get 26
      call $Thread.Mutex.unlock
      i32.const 32
      local.set 27
      local.get 3
      local.get 27
      i32.add
      local.set 28
      local.get 28
      global.set $__stack_pointer
      return
    end
    i32.const 1049708
    local.set 29
    local.get 29
    call $Thread.Mutex.unlock
    i32.const 32
    local.set 30
    local.get 3
    local.get 30
    i32.add
    local.set 31
    local.get 31
    global.set $__stack_pointer
    return)
  (func $debug.dumpCurrentStackTrace (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 32
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.set 4
    local.get 4
    call $io.getStdErr
    local.get 3
    i32.load
    local.set 5
    local.get 3
    local.get 5
    i32.store offset=8
    i32.const 16
    local.set 6
    local.get 3
    local.get 6
    i32.add
    local.set 7
    local.get 7
    local.set 8
    i32.const 8
    local.set 9
    local.get 3
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.set 11
    local.get 8
    local.get 11
    call $fs.file.File.writer
    local.get 3
    i32.load offset=16
    local.set 12
    local.get 3
    local.get 12
    i32.store offset=24
    i32.const 24
    local.set 13
    local.get 3
    local.get 13
    i32.add
    local.set 14
    local.get 14
    local.set 15
    local.get 15
    call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.print__anon_2467
    local.set 16
    i32.const 0
    local.set 17
    i32.const 65535
    local.set 18
    local.get 16
    local.get 18
    i32.and
    local.set 19
    i32.const 65535
    local.set 20
    local.get 17
    local.get 20
    i32.and
    local.set 21
    local.get 19
    local.get 21
    i32.eq
    local.set 22
    i32.const 1
    local.set 23
    local.get 22
    local.get 23
    i32.and
    local.set 24
    block  ;; label = @1
      block  ;; label = @2
        local.get 24
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 32
      local.set 25
      local.get 3
      local.get 25
      i32.add
      local.set 26
      local.get 26
      global.set $__stack_pointer
      return
    end
    i32.const 32
    local.set 27
    local.get 3
    local.get 27
    i32.add
    local.set 28
    local.get 28
    global.set $__stack_pointer
    return)
  (func $debug.panicExtra__anon_2364 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 4160
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=8
    i32.const 1048872
    local.set 6
    local.get 5
    local.get 6
    i32.store offset=12
    i32.const 4111
    local.set 7
    i32.const 170
    local.set 8
    i32.const 17
    local.set 9
    local.get 5
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.get 8
    local.get 7
    call $memset
    drop
    i32.const 17
    local.set 11
    local.get 5
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.set 13
    i32.const 1
    local.set 14
    i32.const 1
    local.set 15
    local.get 14
    local.get 15
    i32.and
    local.set 16
    block  ;; label = @1
      block  ;; label = @2
        local.get 16
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 17
      i32.const 4096
      local.set 18
      local.get 17
      local.get 18
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    i32.const 4096
    local.set 19
    local.get 13
    local.set 20
    i32.const 4128
    local.set 21
    local.get 5
    local.get 21
    i32.add
    local.set 22
    local.get 22
    local.set 23
    local.get 23
    local.get 20
    local.get 19
    local.get 2
    call $fmt.bufPrint__anon_2468
    local.get 5
    i32.load16_u offset=4136
    local.set 24
    i32.const 0
    local.set 25
    i32.const 65535
    local.set 26
    local.get 24
    local.get 26
    i32.and
    local.set 27
    i32.const 65535
    local.set 28
    local.get 25
    local.get 28
    i32.and
    local.set 29
    local.get 27
    local.get 29
    i32.eq
    local.set 30
    i32.const 1
    local.set 31
    local.get 30
    local.get 31
    i32.and
    local.set 32
    block  ;; label = @1
      block  ;; label = @2
        local.get 32
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=4132
        local.set 33
        local.get 5
        i32.load offset=4128
        local.set 34
        local.get 34
        local.set 35
        local.get 33
        local.set 36
        br 1 (;@1;)
      end
      local.get 5
      i32.load16_u offset=4136
      local.set 37
      i32.const 4
      local.set 38
      local.get 37
      local.get 38
      i32.eq
      local.set 39
      block  ;; label = @2
        local.get 39
        br_if 0 (;@2;)
        i32.const 1048811
        local.set 40
        i32.const 23
        local.set 41
        i32.const 0
        local.set 42
        i32.const 1049268
        local.set 43
        local.get 40
        local.get 41
        local.get 42
        local.get 43
        call $builtin.default_panic
        unreachable
      end
      i32.const 17
      local.set 44
      local.get 5
      local.get 44
      i32.add
      local.set 45
      local.get 45
      local.set 46
      i32.const 4096
      local.set 47
      local.get 46
      local.get 47
      i32.add
      local.set 48
      i32.const 1
      local.set 49
      i32.const 1
      local.set 50
      local.get 49
      local.get 50
      i32.and
      local.set 51
      block  ;; label = @2
        block  ;; label = @3
          local.get 51
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 4096
        local.set 52
        i32.const 4111
        local.set 53
        local.get 52
        local.get 53
        call $builtin.panicStartGreaterThanEnd
        unreachable
      end
      i32.const 15
      local.set 54
      local.get 48
      local.set 55
      i32.const 1048872
      local.set 56
      i32.const 15
      local.set 57
      local.get 55
      local.get 54
      local.get 56
      local.get 57
      call $mem.copy__anon_2368
      i32.const 17
      local.set 58
      local.get 5
      local.get 58
      i32.add
      local.set 59
      local.get 59
      local.set 60
      local.get 60
      local.set 61
      local.get 61
      local.set 62
      i32.const 4111
      local.set 63
      local.get 62
      local.set 64
      local.get 64
      local.set 35
      local.get 63
      local.set 36
    end
    local.get 36
    local.set 65
    local.get 35
    local.set 66
    local.get 5
    local.get 66
    i32.store offset=4144
    local.get 5
    local.get 65
    i32.store offset=4148
    local.get 5
    local.get 65
    i32.store offset=4156
    local.get 5
    local.get 66
    i32.store offset=4152
    local.get 5
    i32.load offset=4156
    local.set 67
    local.get 5
    i32.load offset=4152
    local.set 68
    local.get 68
    local.get 67
    local.get 0
    local.get 1
    call $builtin.default_panic
    unreachable)
  (func $fmt.bufPrint__anon_2367 (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 96
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 2
    local.set 7
    local.get 1
    local.set 8
    local.get 6
    local.get 2
    i32.store offset=20
    local.get 6
    local.get 1
    i32.store offset=16
    i32.const 40
    local.set 9
    local.get 6
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.set 11
    local.get 11
    local.get 8
    local.get 7
    call $io.fixed_buffer_stream.fixedBufferStream__anon_2481
    i32.const 8
    local.set 12
    i32.const 24
    local.set 13
    local.get 6
    local.get 13
    i32.add
    local.set 14
    local.get 14
    local.get 12
    i32.add
    local.set 15
    i32.const 40
    local.set 16
    local.get 6
    local.get 16
    i32.add
    local.set 17
    local.get 17
    local.get 12
    i32.add
    local.set 18
    local.get 18
    i32.load
    local.set 19
    local.get 15
    local.get 19
    i32.store
    local.get 6
    i64.load offset=40
    local.set 20
    local.get 6
    local.get 20
    i64.store offset=24
    i32.const 56
    local.set 21
    local.get 6
    local.get 21
    i32.add
    local.set 22
    local.get 22
    local.set 23
    i32.const 24
    local.set 24
    local.get 6
    local.get 24
    i32.add
    local.set 25
    local.get 25
    local.set 26
    local.get 23
    local.get 26
    call $io.fixed_buffer_stream.FixedBufferStream___u8_.writer
    i32.const 56
    local.set 27
    local.get 6
    local.get 27
    i32.add
    local.set 28
    local.get 28
    local.set 29
    local.get 29
    local.get 3
    call $fmt.format__anon_2519
    local.set 30
    i32.const 0
    local.set 31
    i32.const 65535
    local.set 32
    local.get 30
    local.get 32
    i32.and
    local.set 33
    i32.const 65535
    local.set 34
    local.get 31
    local.get 34
    i32.and
    local.set 35
    local.get 33
    local.get 35
    i32.ne
    local.set 36
    i32.const 1
    local.set 37
    local.get 36
    local.get 37
    i32.and
    local.set 38
    block  ;; label = @1
      local.get 38
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      local.get 30
      i32.store16 offset=72
      local.get 6
      i64.load offset=64
      local.set 39
      local.get 0
      local.get 39
      i64.store align=4
      i32.const 8
      local.set 40
      local.get 0
      local.get 40
      i32.add
      local.set 41
      i32.const 64
      local.set 42
      local.get 6
      local.get 42
      i32.add
      local.set 43
      local.get 43
      local.get 40
      i32.add
      local.set 44
      local.get 44
      i32.load
      local.set 45
      local.get 41
      local.get 45
      i32.store
      i32.const 96
      local.set 46
      local.get 6
      local.get 46
      i32.add
      local.set 47
      local.get 47
      global.set $__stack_pointer
      return
    end
    i32.const 8
    local.set 48
    local.get 6
    local.get 48
    i32.add
    local.set 49
    i32.const 24
    local.set 50
    local.get 6
    local.get 50
    i32.add
    local.set 51
    local.get 49
    local.get 51
    call $io.fixed_buffer_stream.FixedBufferStream___u8_.getWritten
    local.get 6
    i32.load offset=8
    local.set 52
    local.get 6
    i32.load offset=12
    local.set 53
    i32.const 0
    local.set 54
    local.get 6
    local.get 54
    i32.store16 offset=88
    local.get 6
    local.get 53
    i32.store offset=84
    local.get 6
    local.get 52
    i32.store offset=80
    local.get 6
    i64.load offset=80
    local.set 55
    local.get 0
    local.get 55
    i64.store align=4
    i32.const 8
    local.set 56
    local.get 0
    local.get 56
    i32.add
    local.set 57
    i32.const 80
    local.set 58
    local.get 6
    local.get 58
    i32.add
    local.set 59
    local.get 59
    local.get 56
    i32.add
    local.set 60
    local.get 60
    i32.load
    local.set 61
    local.get 57
    local.get 61
    i32.store
    i32.const 96
    local.set 62
    local.get 6
    local.get 62
    i32.add
    local.set 63
    local.get 63
    global.set $__stack_pointer
    return)
  (func $mem.copy__anon_2368 (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 48
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 1
    local.set 7
    local.get 0
    local.set 8
    local.get 3
    local.set 9
    local.get 2
    local.set 10
    local.get 6
    local.get 1
    i32.store offset=12
    local.get 6
    local.get 0
    i32.store offset=8
    local.get 6
    local.get 3
    i32.store offset=20
    local.get 6
    local.get 2
    i32.store offset=16
    local.get 7
    local.set 11
    local.get 9
    local.set 12
    local.get 11
    local.get 12
    i32.ge_u
    local.set 13
    local.get 13
    call $debug.assert
    i32.const 0
    local.set 14
    local.get 6
    local.get 14
    i32.store offset=28
    block  ;; label = @1
      loop  ;; label = @2
        local.get 6
        i32.load offset=28
        local.set 15
        local.get 15
        local.set 16
        local.get 9
        local.set 17
        local.get 16
        local.get 17
        i32.lt_u
        local.set 18
        i32.const 1
        local.set 19
        local.get 18
        local.get 19
        i32.and
        local.set 20
        block  ;; label = @3
          block  ;; label = @4
            local.get 20
            i32.eqz
            br_if 0 (;@4;)
            local.get 10
            local.get 15
            i32.add
            local.set 21
            local.get 21
            i32.load8_u
            local.set 22
            local.get 6
            local.get 22
            i32.store8 offset=35
            i32.const 28
            local.set 23
            local.get 6
            local.get 23
            i32.add
            local.set 24
            local.get 6
            local.get 24
            i32.store offset=36
            local.get 6
            local.get 7
            i32.store offset=44
            local.get 6
            local.get 8
            i32.store offset=40
            local.get 6
            i32.load offset=28
            local.set 25
            local.get 6
            i32.load offset=44
            drop
            local.get 6
            i32.load offset=40
            local.set 26
            local.get 26
            local.get 25
            i32.add
            local.set 27
            local.get 27
            local.get 22
            i32.store8
            br 1 (;@3;)
          end
          br 2 (;@1;)
        end
        local.get 6
        i32.load offset=28
        local.set 28
        i32.const 1
        local.set 29
        local.get 28
        local.get 29
        i32.add
        local.set 30
        local.get 6
        local.get 30
        i32.store offset=28
        br 0 (;@2;)
      end
    end
    i32.const 48
    local.set 31
    local.get 6
    local.get 31
    i32.add
    local.set 32
    local.get 32
    global.set $__stack_pointer
    return)
  (func $unicode.utf8ByteSequenceLength (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.store8 offset=15
    i32.const 0
    local.set 5
    i32.const 255
    local.set 6
    local.get 1
    local.get 6
    i32.and
    local.set 7
    i32.const 255
    local.set 8
    local.get 5
    local.get 8
    i32.and
    local.set 9
    local.get 7
    local.get 9
    i32.ge_u
    local.set 10
    i32.const 127
    local.set 11
    i32.const 255
    local.set 12
    local.get 1
    local.get 12
    i32.and
    local.set 13
    i32.const 255
    local.set 14
    local.get 11
    local.get 14
    i32.and
    local.set 15
    local.get 13
    local.get 15
    i32.le_u
    local.set 16
    local.get 10
    local.get 16
    i32.and
    local.set 17
    i32.const 1
    local.set 18
    local.get 17
    local.get 18
    i32.and
    local.set 19
    block  ;; label = @1
      block  ;; label = @2
        local.get 19
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 20
        local.get 20
        i32.load offset=1049128 align=2
        local.set 21
        local.get 0
        local.get 21
        i32.store align=2
        br 1 (;@1;)
      end
      i32.const 192
      local.set 22
      i32.const 255
      local.set 23
      local.get 1
      local.get 23
      i32.and
      local.set 24
      i32.const 255
      local.set 25
      local.get 22
      local.get 25
      i32.and
      local.set 26
      local.get 24
      local.get 26
      i32.ge_u
      local.set 27
      i32.const 223
      local.set 28
      i32.const 255
      local.set 29
      local.get 1
      local.get 29
      i32.and
      local.set 30
      i32.const 255
      local.set 31
      local.get 28
      local.get 31
      i32.and
      local.set 32
      local.get 30
      local.get 32
      i32.le_u
      local.set 33
      local.get 27
      local.get 33
      i32.and
      local.set 34
      i32.const 1
      local.set 35
      local.get 34
      local.get 35
      i32.and
      local.set 36
      block  ;; label = @2
        local.get 36
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 37
        local.get 37
        i32.load offset=1049132 align=2
        local.set 38
        local.get 0
        local.get 38
        i32.store align=2
        br 1 (;@1;)
      end
      i32.const 224
      local.set 39
      i32.const 255
      local.set 40
      local.get 1
      local.get 40
      i32.and
      local.set 41
      i32.const 255
      local.set 42
      local.get 39
      local.get 42
      i32.and
      local.set 43
      local.get 41
      local.get 43
      i32.ge_u
      local.set 44
      i32.const 239
      local.set 45
      i32.const 255
      local.set 46
      local.get 1
      local.get 46
      i32.and
      local.set 47
      i32.const 255
      local.set 48
      local.get 45
      local.get 48
      i32.and
      local.set 49
      local.get 47
      local.get 49
      i32.le_u
      local.set 50
      local.get 44
      local.get 50
      i32.and
      local.set 51
      i32.const 1
      local.set 52
      local.get 51
      local.get 52
      i32.and
      local.set 53
      block  ;; label = @2
        local.get 53
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 54
        local.get 54
        i32.load offset=1049136 align=2
        local.set 55
        local.get 0
        local.get 55
        i32.store align=2
        br 1 (;@1;)
      end
      i32.const 240
      local.set 56
      i32.const 255
      local.set 57
      local.get 1
      local.get 57
      i32.and
      local.set 58
      i32.const 255
      local.set 59
      local.get 56
      local.get 59
      i32.and
      local.set 60
      local.get 58
      local.get 60
      i32.ge_u
      local.set 61
      i32.const 247
      local.set 62
      i32.const 255
      local.set 63
      local.get 1
      local.get 63
      i32.and
      local.set 64
      i32.const 255
      local.set 65
      local.get 62
      local.get 65
      i32.and
      local.set 66
      local.get 64
      local.get 66
      i32.le_u
      local.set 67
      local.get 61
      local.get 67
      i32.and
      local.set 68
      i32.const 1
      local.set 69
      local.get 68
      local.get 69
      i32.and
      local.set 70
      block  ;; label = @2
        local.get 70
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 71
        local.get 71
        i32.load offset=1049140 align=2
        local.set 72
        local.get 0
        local.get 72
        i32.store align=2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 73
      local.get 73
      i32.load offset=1049144 align=2
      local.set 74
      local.get 0
      local.get 74
      i32.store align=2
    end
    i32.const 16
    local.set 75
    local.get 4
    local.get 75
    i32.add
    local.set 76
    local.get 76
    global.set $__stack_pointer
    return)
  (func $unicode.utf8CountCodepoints (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 160
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 2
    local.set 6
    local.get 1
    local.set 7
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    i32.const 0
    local.set 8
    local.get 5
    local.get 8
    i32.store offset=16
    i32.const 0
    local.set 9
    local.get 5
    local.get 9
    i32.store offset=20
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=20
        local.set 10
        local.get 10
        local.set 11
        local.get 6
        local.set 12
        local.get 11
        local.get 12
        i32.lt_u
        local.set 13
        i32.const 1
        local.set 14
        local.get 13
        local.get 14
        i32.and
        local.set 15
        block  ;; label = @3
          block  ;; label = @4
            local.get 15
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          br 2 (;@1;)
        end
        loop  ;; label = @3
          local.get 5
          i32.load offset=20
          local.set 16
          i32.const 4
          local.set 17
          local.get 16
          local.get 17
          i32.add
          local.set 18
          local.get 18
          local.get 16
          i32.lt_u
          local.set 19
          local.get 5
          local.get 18
          i32.store offset=24
          i32.const 1
          local.set 20
          local.get 19
          local.get 20
          i32.and
          local.set 21
          local.get 5
          local.get 21
          i32.store8 offset=28
          local.get 5
          i32.load8_u offset=28
          local.set 22
          i32.const 0
          local.set 23
          i32.const 1
          local.set 24
          local.get 22
          local.get 24
          i32.and
          local.set 25
          i32.const 1
          local.set 26
          local.get 23
          local.get 26
          i32.and
          local.set 27
          local.get 25
          local.get 27
          i32.eq
          local.set 28
          i32.const 1
          local.set 29
          local.get 28
          local.get 29
          i32.and
          local.set 30
          block  ;; label = @4
            block  ;; label = @5
              local.get 30
              i32.eqz
              br_if 0 (;@5;)
              br 1 (;@4;)
            end
            i32.const 1048669
            local.set 31
            i32.const 16
            local.set 32
            i32.const 0
            local.set 33
            i32.const 1049148
            local.set 34
            local.get 31
            local.get 32
            local.get 33
            local.get 34
            call $builtin.default_panic
            unreachable
          end
          local.get 5
          i32.load offset=24
          local.set 35
          local.get 35
          local.set 36
          local.get 6
          local.set 37
          local.get 36
          local.get 37
          i32.le_u
          local.set 38
          i32.const 1
          local.set 39
          local.get 38
          local.get 39
          i32.and
          local.set 40
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 40
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 5
                    local.get 7
                    i32.store offset=32
                    local.get 5
                    local.get 6
                    i32.store offset=36
                    local.get 5
                    i32.load offset=20
                    local.set 41
                    local.get 5
                    i32.load offset=36
                    local.set 42
                    local.get 5
                    i32.load offset=32
                    local.set 43
                    local.get 43
                    local.get 41
                    i32.add
                    local.set 44
                    local.get 41
                    local.set 45
                    local.get 42
                    local.set 46
                    local.get 45
                    local.get 46
                    i32.le_u
                    local.set 47
                    i32.const 1
                    local.set 48
                    local.get 47
                    local.get 48
                    i32.and
                    local.set 49
                    local.get 49
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                  br 3 (;@4;)
                end
                br 1 (;@5;)
              end
              local.get 41
              local.get 42
              call $builtin.panicStartGreaterThanEnd
              unreachable
            end
            local.get 42
            local.get 41
            i32.sub
            local.set 50
            local.get 42
            local.set 51
            local.get 42
            local.set 52
            local.get 51
            local.get 52
            i32.le_u
            local.set 53
            i32.const 1
            local.set 54
            local.get 53
            local.get 54
            i32.and
            local.set 55
            block  ;; label = @5
              block  ;; label = @6
                local.get 55
                i32.eqz
                br_if 0 (;@6;)
                br 1 (;@5;)
              end
              local.get 42
              local.get 42
              call $builtin.panicOutOfBounds
              unreachable
            end
            local.get 41
            local.set 56
            local.get 42
            local.set 57
            local.get 56
            local.get 57
            i32.le_u
            local.set 58
            i32.const 1
            local.set 59
            local.get 58
            local.get 59
            i32.and
            local.set 60
            block  ;; label = @5
              block  ;; label = @6
                local.get 60
                i32.eqz
                br_if 0 (;@6;)
                br 1 (;@5;)
              end
              local.get 41
              local.get 42
              call $builtin.panicOutOfBounds
              unreachable
            end
            local.get 5
            local.get 50
            i32.store offset=44
            local.get 5
            local.get 44
            i32.store offset=40
            local.get 5
            i32.load offset=44
            local.set 61
            local.get 5
            i32.load offset=40
            local.set 62
            i32.const 1
            local.set 63
            i32.const 1
            local.set 64
            local.get 63
            local.get 64
            i32.and
            local.set 65
            block  ;; label = @5
              block  ;; label = @6
                local.get 65
                i32.eqz
                br_if 0 (;@6;)
                br 1 (;@5;)
              end
              i32.const 0
              local.set 66
              i32.const 4
              local.set 67
              local.get 66
              local.get 67
              call $builtin.panicStartGreaterThanEnd
              unreachable
            end
            i32.const 4
            local.set 68
            local.get 68
            local.set 69
            local.get 61
            local.set 70
            local.get 69
            local.get 70
            i32.le_u
            local.set 71
            i32.const 1
            local.set 72
            local.get 71
            local.get 72
            i32.and
            local.set 73
            block  ;; label = @5
              block  ;; label = @6
                local.get 73
                i32.eqz
                br_if 0 (;@6;)
                br 1 (;@5;)
              end
              i32.const 4
              local.set 74
              local.get 74
              local.get 61
              call $builtin.panicOutOfBounds
              unreachable
            end
            local.get 62
            call $mem.readIntNative__anon_2355
            local.set 75
            local.get 5
            local.get 75
            i32.store offset=52
            i32.const -2139062144
            local.set 76
            local.get 75
            local.get 76
            i32.and
            local.set 77
            block  ;; label = @5
              local.get 77
              i32.eqz
              br_if 0 (;@5;)
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=16
            local.set 78
            i32.const 4
            local.set 79
            local.get 78
            local.get 79
            i32.add
            local.set 80
            local.get 80
            local.get 78
            i32.lt_u
            local.set 81
            local.get 5
            local.get 80
            i32.store offset=56
            i32.const 1
            local.set 82
            local.get 81
            local.get 82
            i32.and
            local.set 83
            local.get 5
            local.get 83
            i32.store8 offset=60
            local.get 5
            i32.load8_u offset=60
            local.set 84
            i32.const 0
            local.set 85
            i32.const 1
            local.set 86
            local.get 84
            local.get 86
            i32.and
            local.set 87
            i32.const 1
            local.set 88
            local.get 85
            local.get 88
            i32.and
            local.set 89
            local.get 87
            local.get 89
            i32.eq
            local.set 90
            i32.const 1
            local.set 91
            local.get 90
            local.get 91
            i32.and
            local.set 92
            block  ;; label = @5
              block  ;; label = @6
                local.get 92
                i32.eqz
                br_if 0 (;@6;)
                br 1 (;@5;)
              end
              i32.const 1048669
              local.set 93
              i32.const 16
              local.set 94
              i32.const 0
              local.set 95
              i32.const 1049156
              local.set 96
              local.get 93
              local.get 94
              local.get 95
              local.get 96
              call $builtin.default_panic
              unreachable
            end
            local.get 5
            i32.load offset=56
            local.set 97
            local.get 5
            local.get 97
            i32.store offset=16
            local.get 5
            i32.load offset=20
            local.set 98
            i32.const 4
            local.set 99
            local.get 98
            local.get 99
            i32.add
            local.set 100
            local.get 100
            local.get 98
            i32.lt_u
            local.set 101
            local.get 5
            local.get 100
            i32.store offset=64
            i32.const 1
            local.set 102
            local.get 101
            local.get 102
            i32.and
            local.set 103
            local.get 5
            local.get 103
            i32.store8 offset=68
            local.get 5
            i32.load8_u offset=68
            local.set 104
            i32.const 0
            local.set 105
            i32.const 1
            local.set 106
            local.get 104
            local.get 106
            i32.and
            local.set 107
            i32.const 1
            local.set 108
            local.get 105
            local.get 108
            i32.and
            local.set 109
            local.get 107
            local.get 109
            i32.eq
            local.set 110
            i32.const 1
            local.set 111
            local.get 110
            local.get 111
            i32.and
            local.set 112
            block  ;; label = @5
              block  ;; label = @6
                local.get 112
                i32.eqz
                br_if 0 (;@6;)
                br 1 (;@5;)
              end
              i32.const 1048669
              local.set 113
              i32.const 16
              local.set 114
              i32.const 0
              local.set 115
              i32.const 1049164
              local.set 116
              local.get 113
              local.get 114
              local.get 115
              local.get 116
              call $builtin.default_panic
              unreachable
            end
            local.get 5
            i32.load offset=64
            local.set 117
            local.get 5
            local.get 117
            i32.store offset=20
            br 1 (;@3;)
          end
        end
        local.get 5
        i32.load offset=20
        local.set 118
        local.get 118
        local.set 119
        local.get 6
        local.set 120
        local.get 119
        local.get 120
        i32.lt_u
        local.set 121
        i32.const 1
        local.set 122
        local.get 121
        local.get 122
        i32.and
        local.set 123
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 123
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  i32.load offset=20
                  local.set 124
                  local.get 124
                  local.set 125
                  local.get 6
                  local.set 126
                  local.get 125
                  local.get 126
                  i32.lt_u
                  local.set 127
                  i32.const 1
                  local.set 128
                  local.get 127
                  local.get 128
                  i32.and
                  local.set 129
                  local.get 129
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                br 3 (;@3;)
              end
              br 1 (;@4;)
            end
            local.get 124
            local.get 6
            call $builtin.panicOutOfBounds
            unreachable
          end
          local.get 7
          local.get 124
          i32.add
          local.set 130
          local.get 130
          i32.load8_u
          local.set 131
          i32.const 72
          local.set 132
          local.get 5
          local.get 132
          i32.add
          local.set 133
          local.get 133
          local.set 134
          local.get 134
          local.get 131
          call $unicode.utf8ByteSequenceLength
          local.get 5
          i32.load16_u offset=72
          local.set 135
          i32.const 0
          local.set 136
          i32.const 65535
          local.set 137
          local.get 135
          local.get 137
          i32.and
          local.set 138
          i32.const 65535
          local.set 139
          local.get 136
          local.get 139
          i32.and
          local.set 140
          local.get 138
          local.get 140
          i32.ne
          local.set 141
          i32.const 1
          local.set 142
          local.get 141
          local.get 142
          i32.and
          local.set 143
          block  ;; label = @4
            local.get 143
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.load16_u offset=72
            local.set 144
            local.get 5
            local.get 144
            i32.store16 offset=84
            local.get 5
            i64.load offset=80
            local.set 145
            local.get 0
            local.get 145
            i64.store align=4
            i32.const 160
            local.set 146
            local.get 5
            local.get 146
            i32.add
            local.set 147
            local.get 147
            global.set $__stack_pointer
            return
          end
          local.get 5
          i32.load8_u offset=74
          local.set 148
          local.get 148
          local.set 149
          local.get 5
          local.get 148
          i32.store8 offset=95
          local.get 5
          i32.load offset=20
          local.set 150
          local.get 150
          local.get 148
          i32.add
          local.set 151
          local.get 151
          local.get 150
          i32.lt_u
          local.set 152
          local.get 5
          local.get 151
          i32.store offset=96
          i32.const 1
          local.set 153
          local.get 152
          local.get 153
          i32.and
          local.set 154
          local.get 5
          local.get 154
          i32.store8 offset=100
          local.get 5
          i32.load8_u offset=100
          local.set 155
          i32.const 0
          local.set 156
          i32.const 1
          local.set 157
          local.get 155
          local.get 157
          i32.and
          local.set 158
          i32.const 1
          local.set 159
          local.get 156
          local.get 159
          i32.and
          local.set 160
          local.get 158
          local.get 160
          i32.eq
          local.set 161
          i32.const 1
          local.set 162
          local.get 161
          local.get 162
          i32.and
          local.set 163
          block  ;; label = @4
            block  ;; label = @5
              local.get 163
              i32.eqz
              br_if 0 (;@5;)
              br 1 (;@4;)
            end
            i32.const 1048669
            local.set 164
            i32.const 16
            local.set 165
            i32.const 0
            local.set 166
            i32.const 1049172
            local.set 167
            local.get 164
            local.get 165
            local.get 166
            local.get 167
            call $builtin.default_panic
            unreachable
          end
          local.get 5
          i32.load offset=96
          local.set 168
          local.get 168
          local.set 169
          local.get 6
          local.set 170
          local.get 169
          local.get 170
          i32.gt_u
          local.set 171
          i32.const 1
          local.set 172
          local.get 171
          local.get 172
          i32.and
          local.set 173
          block  ;; label = @4
            local.get 173
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 174
            local.get 174
            i64.load offset=1049180 align=4
            local.set 175
            local.get 0
            local.get 175
            i64.store align=4
            i32.const 160
            local.set 176
            local.get 5
            local.get 176
            i32.add
            local.set 177
            local.get 177
            global.set $__stack_pointer
            return
          end
          i32.const 7
          local.set 178
          local.get 149
          local.get 178
          i32.and
          local.set 179
          i32.const 1
          local.set 180
          local.get 179
          local.get 180
          i32.eq
          local.set 181
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 181
                    br_if 0 (;@8;)
                    local.get 5
                    local.get 7
                    i32.store offset=104
                    local.get 5
                    local.get 6
                    i32.store offset=108
                    local.get 5
                    i32.load offset=20
                    local.set 182
                    local.get 182
                    local.set 183
                    i32.const 7
                    local.set 184
                    local.get 149
                    local.get 184
                    i32.and
                    local.set 185
                    local.get 182
                    local.get 185
                    i32.add
                    local.set 186
                    local.get 186
                    local.get 182
                    i32.lt_u
                    local.set 187
                    local.get 5
                    local.get 186
                    i32.store offset=112
                    i32.const 1
                    local.set 188
                    local.get 187
                    local.get 188
                    i32.and
                    local.set 189
                    local.get 5
                    local.get 189
                    i32.store8 offset=116
                    local.get 5
                    i32.load8_u offset=116
                    local.set 190
                    i32.const 0
                    local.set 191
                    i32.const 1
                    local.set 192
                    local.get 190
                    local.get 192
                    i32.and
                    local.set 193
                    i32.const 1
                    local.set 194
                    local.get 191
                    local.get 194
                    i32.and
                    local.set 195
                    local.get 193
                    local.get 195
                    i32.eq
                    local.set 196
                    i32.const 1
                    local.set 197
                    local.get 196
                    local.get 197
                    i32.and
                    local.set 198
                    local.get 198
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                  br 3 (;@4;)
                end
                br 1 (;@5;)
              end
              i32.const 1048669
              local.set 199
              i32.const 16
              local.set 200
              i32.const 0
              local.set 201
              i32.const 1049188
              local.set 202
              local.get 199
              local.get 200
              local.get 201
              local.get 202
              call $builtin.default_panic
              unreachable
            end
            local.get 5
            i32.load offset=112
            local.set 203
            local.get 5
            i32.load offset=108
            local.set 204
            local.get 5
            i32.load offset=104
            local.set 205
            local.get 205
            local.get 183
            i32.add
            local.set 206
            local.get 183
            local.set 207
            local.get 203
            local.set 208
            local.get 207
            local.get 208
            i32.le_u
            local.set 209
            i32.const 1
            local.set 210
            local.get 209
            local.get 210
            i32.and
            local.set 211
            block  ;; label = @5
              block  ;; label = @6
                local.get 211
                i32.eqz
                br_if 0 (;@6;)
                br 1 (;@5;)
              end
              local.get 183
              local.get 203
              call $builtin.panicStartGreaterThanEnd
              unreachable
            end
            local.get 203
            local.get 183
            i32.sub
            local.set 212
            local.get 203
            local.set 213
            local.get 204
            local.set 214
            local.get 213
            local.get 214
            i32.le_u
            local.set 215
            i32.const 1
            local.set 216
            local.get 215
            local.get 216
            i32.and
            local.set 217
            block  ;; label = @5
              block  ;; label = @6
                local.get 217
                i32.eqz
                br_if 0 (;@6;)
                br 1 (;@5;)
              end
              local.get 203
              local.get 204
              call $builtin.panicOutOfBounds
              unreachable
            end
            local.get 183
            local.set 218
            local.get 203
            local.set 219
            local.get 218
            local.get 219
            i32.le_u
            local.set 220
            i32.const 1
            local.set 221
            local.get 220
            local.get 221
            i32.and
            local.set 222
            block  ;; label = @5
              block  ;; label = @6
                local.get 222
                i32.eqz
                br_if 0 (;@6;)
                br 1 (;@5;)
              end
              local.get 183
              local.get 203
              call $builtin.panicOutOfBounds
              unreachable
            end
            local.get 212
            local.set 223
            local.get 206
            local.set 224
            i32.const 120
            local.set 225
            local.get 5
            local.get 225
            i32.add
            local.set 226
            local.get 226
            local.set 227
            local.get 227
            local.get 224
            local.get 223
            call $unicode.utf8Decode
            local.get 5
            i32.load16_u offset=124
            local.set 228
            i32.const 0
            local.set 229
            i32.const 65535
            local.set 230
            local.get 228
            local.get 230
            i32.and
            local.set 231
            i32.const 65535
            local.set 232
            local.get 229
            local.get 232
            i32.and
            local.set 233
            local.get 231
            local.get 233
            i32.ne
            local.set 234
            i32.const 1
            local.set 235
            local.get 234
            local.get 235
            i32.and
            local.set 236
            block  ;; label = @5
              local.get 236
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.load16_u offset=124
              local.set 237
              local.get 5
              local.get 237
              i32.store16 offset=132
              local.get 5
              i64.load offset=128
              local.set 238
              local.get 0
              local.get 238
              i64.store align=4
              i32.const 160
              local.set 239
              local.get 5
              local.get 239
              i32.add
              local.set 240
              local.get 240
              global.set $__stack_pointer
              return
            end
          end
          local.get 5
          i32.load offset=20
          local.set 241
          i32.const 7
          local.set 242
          local.get 149
          local.get 242
          i32.and
          local.set 243
          local.get 241
          local.get 243
          i32.add
          local.set 244
          local.get 244
          local.get 241
          i32.lt_u
          local.set 245
          local.get 5
          local.get 244
          i32.store offset=136
          i32.const 1
          local.set 246
          local.get 245
          local.get 246
          i32.and
          local.set 247
          local.get 5
          local.get 247
          i32.store8 offset=140
          local.get 5
          i32.load8_u offset=140
          local.set 248
          i32.const 0
          local.set 249
          i32.const 1
          local.set 250
          local.get 248
          local.get 250
          i32.and
          local.set 251
          i32.const 1
          local.set 252
          local.get 249
          local.get 252
          i32.and
          local.set 253
          local.get 251
          local.get 253
          i32.eq
          local.set 254
          i32.const 1
          local.set 255
          local.get 254
          local.get 255
          i32.and
          local.set 256
          block  ;; label = @4
            block  ;; label = @5
              local.get 256
              i32.eqz
              br_if 0 (;@5;)
              br 1 (;@4;)
            end
            i32.const 1048669
            local.set 257
            i32.const 16
            local.set 258
            i32.const 0
            local.set 259
            i32.const 1049196
            local.set 260
            local.get 257
            local.get 258
            local.get 259
            local.get 260
            call $builtin.default_panic
            unreachable
          end
          local.get 5
          i32.load offset=136
          local.set 261
          local.get 5
          local.get 261
          i32.store offset=20
          local.get 5
          i32.load offset=16
          local.set 262
          i32.const 1
          local.set 263
          local.get 262
          local.get 263
          i32.add
          local.set 264
          local.get 264
          i32.eqz
          local.set 265
          local.get 5
          local.get 264
          i32.store offset=144
          i32.const 1
          local.set 266
          local.get 265
          local.get 266
          i32.and
          local.set 267
          local.get 5
          local.get 267
          i32.store8 offset=148
          local.get 5
          i32.load8_u offset=148
          local.set 268
          i32.const 0
          local.set 269
          i32.const 1
          local.set 270
          local.get 268
          local.get 270
          i32.and
          local.set 271
          i32.const 1
          local.set 272
          local.get 269
          local.get 272
          i32.and
          local.set 273
          local.get 271
          local.get 273
          i32.eq
          local.set 274
          i32.const 1
          local.set 275
          local.get 274
          local.get 275
          i32.and
          local.set 276
          block  ;; label = @4
            block  ;; label = @5
              local.get 276
              i32.eqz
              br_if 0 (;@5;)
              br 1 (;@4;)
            end
            i32.const 1048669
            local.set 277
            i32.const 16
            local.set 278
            i32.const 0
            local.set 279
            i32.const 1049204
            local.set 280
            local.get 277
            local.get 278
            local.get 279
            local.get 280
            call $builtin.default_panic
            unreachable
          end
          local.get 5
          i32.load offset=144
          local.set 281
          local.get 5
          local.get 281
          i32.store offset=16
        end
        br 0 (;@2;)
      end
    end
    local.get 5
    i32.load offset=16
    local.set 282
    i32.const 0
    local.set 283
    local.get 5
    local.get 283
    i32.store16 offset=156
    local.get 5
    local.get 282
    i32.store offset=152
    local.get 5
    i64.load offset=152
    local.set 284
    local.get 0
    local.get 284
    i64.store align=4
    i32.const 160
    local.set 285
    local.get 5
    local.get 285
    i32.add
    local.set 286
    local.get 286
    global.set $__stack_pointer
    return)
  (func $mem.readIntNative__anon_2355 (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 0
    i32.load align=1
    local.set 4
    i32.const 16
    local.set 5
    local.get 3
    local.get 5
    i32.add
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 4
    return)
  (func $unicode.utf8Decode (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 48
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 2
    local.set 6
    local.get 1
    local.set 7
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    i32.const -1
    local.set 8
    local.get 2
    local.get 8
    i32.add
    local.set 9
    i32.const 3
    local.set 10
    local.get 9
    local.get 10
    i32.gt_u
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 9
                br_table 1 (;@5;) 2 (;@4;) 3 (;@3;) 4 (;@2;) 0 (;@6;)
              end
              i32.const 1048847
              local.set 11
              i32.const 24
              local.set 12
              i32.const 0
              local.set 13
              i32.const 1049252
              local.set 14
              local.get 11
              local.get 12
              local.get 13
              local.get 14
              call $builtin.default_panic
              unreachable
            end
            i32.const 0
            local.set 15
            local.get 15
            local.set 16
            local.get 6
            local.set 17
            local.get 16
            local.get 17
            i32.lt_u
            local.set 18
            i32.const 1
            local.set 19
            local.get 18
            local.get 19
            i32.and
            local.set 20
            block  ;; label = @5
              block  ;; label = @6
                local.get 20
                i32.eqz
                br_if 0 (;@6;)
                br 1 (;@5;)
              end
              i32.const 0
              local.set 21
              local.get 21
              local.get 6
              call $builtin.panicOutOfBounds
              unreachable
            end
            local.get 7
            i32.load8_u
            local.set 22
            i32.const 0
            local.set 23
            local.get 5
            local.get 23
            i32.store16 offset=20
            local.get 5
            local.get 23
            i32.store8 offset=18
            local.get 5
            local.get 22
            i32.store16 offset=16
            local.get 5
            i64.load offset=16
            local.set 24
            local.get 0
            local.get 24
            i64.store align=4
            br 3 (;@1;)
          end
          i32.const 24
          local.set 25
          local.get 5
          local.get 25
          i32.add
          local.set 26
          local.get 26
          local.set 27
          local.get 27
          local.get 7
          local.get 6
          call $unicode.utf8Decode2
          local.get 5
          i64.load offset=24
          local.set 28
          local.get 0
          local.get 28
          i64.store align=4
          br 2 (;@1;)
        end
        i32.const 32
        local.set 29
        local.get 5
        local.get 29
        i32.add
        local.set 30
        local.get 30
        local.set 31
        local.get 31
        local.get 7
        local.get 6
        call $unicode.utf8Decode3
        local.get 5
        i64.load offset=32
        local.set 32
        local.get 0
        local.get 32
        i64.store align=4
        br 1 (;@1;)
      end
      i32.const 40
      local.set 33
      local.get 5
      local.get 33
      i32.add
      local.set 34
      local.get 34
      local.set 35
      local.get 35
      local.get 7
      local.get 6
      call $unicode.utf8Decode4
      local.get 5
      i64.load offset=40
      local.set 36
      local.get 0
      local.get 36
      i64.store align=4
    end
    i32.const 48
    local.set 37
    local.get 5
    local.get 37
    i32.add
    local.set 38
    local.get 38
    global.set $__stack_pointer
    return)
  (func $unicode.utf8Decode2 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 32
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 2
    local.set 6
    local.get 1
    local.set 7
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    i32.const 2
    local.set 8
    local.get 6
    local.set 9
    local.get 8
    local.set 10
    local.get 9
    local.get 10
    i32.eq
    local.set 11
    local.get 11
    call $debug.assert
    i32.const 0
    local.set 12
    local.get 12
    local.set 13
    local.get 6
    local.set 14
    local.get 13
    local.get 14
    i32.lt_u
    local.set 15
    i32.const 1
    local.set 16
    local.get 15
    local.get 16
    i32.and
    local.set 17
    block  ;; label = @1
      block  ;; label = @2
        local.get 17
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 18
      local.get 18
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u
    local.set 19
    i32.const -32
    local.set 20
    local.get 19
    local.get 20
    i32.and
    local.set 21
    i32.const 192
    local.set 22
    i32.const 255
    local.set 23
    local.get 21
    local.get 23
    i32.and
    local.set 24
    i32.const 255
    local.set 25
    local.get 22
    local.get 25
    i32.and
    local.set 26
    local.get 24
    local.get 26
    i32.eq
    local.set 27
    local.get 27
    call $debug.assert
    i32.const 0
    local.set 28
    local.get 28
    local.set 29
    local.get 6
    local.set 30
    local.get 29
    local.get 30
    i32.lt_u
    local.set 31
    i32.const 1
    local.set 32
    local.get 31
    local.get 32
    i32.and
    local.set 33
    block  ;; label = @1
      block  ;; label = @2
        local.get 33
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 34
      local.get 34
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u
    local.set 35
    i32.const 31
    local.set 36
    local.get 35
    local.get 36
    i32.and
    local.set 37
    i32.const 0
    local.set 38
    local.get 5
    local.get 38
    i32.store8 offset=22
    local.get 5
    local.get 37
    i32.store16 offset=20
    i32.const 1
    local.set 39
    local.get 39
    local.set 40
    local.get 6
    local.set 41
    local.get 40
    local.get 41
    i32.lt_u
    local.set 42
    i32.const 1
    local.set 43
    local.get 42
    local.get 43
    i32.and
    local.set 44
    block  ;; label = @1
      block  ;; label = @2
        local.get 44
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1
      local.set 45
      local.get 45
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u offset=1
    local.set 46
    i32.const -64
    local.set 47
    local.get 46
    local.get 47
    i32.and
    local.set 48
    i32.const 128
    local.set 49
    i32.const 255
    local.set 50
    local.get 48
    local.get 50
    i32.and
    local.set 51
    i32.const 255
    local.set 52
    local.get 49
    local.get 52
    i32.and
    local.set 53
    local.get 51
    local.get 53
    i32.ne
    local.set 54
    i32.const 1
    local.set 55
    local.get 54
    local.get 55
    i32.and
    local.set 56
    block  ;; label = @1
      local.get 56
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 57
      local.get 57
      i64.load offset=1049320 align=4
      local.set 58
      local.get 0
      local.get 58
      i64.store align=4
      i32.const 32
      local.set 59
      local.get 5
      local.get 59
      i32.add
      local.set 60
      local.get 60
      global.set $__stack_pointer
      return
    end
    local.get 5
    i32.load8_u offset=22
    local.set 61
    i32.const 16
    local.set 62
    local.get 61
    local.get 62
    i32.shl
    local.set 63
    local.get 5
    i32.load16_u offset=20
    local.set 64
    local.get 64
    local.get 63
    i32.or
    local.set 65
    i32.const 1
    local.set 66
    i32.const 1
    local.set 67
    local.get 66
    local.get 67
    i32.and
    local.set 68
    block  ;; label = @1
      block  ;; label = @2
        local.get 68
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1048768
      local.set 69
      i32.const 42
      local.set 70
      i32.const 0
      local.set 71
      i32.const 1049328
      local.set 72
      local.get 69
      local.get 70
      local.get 71
      local.get 72
      call $builtin.default_panic
      unreachable
    end
    i32.const 6
    local.set 73
    local.get 65
    local.get 73
    i32.shl
    local.set 74
    local.get 5
    local.get 74
    i32.store16 offset=20
    i32.const 10
    local.set 75
    local.get 65
    local.get 75
    i32.shr_u
    local.set 76
    i32.const 31
    local.set 77
    local.get 76
    local.get 77
    i32.and
    local.set 78
    local.get 5
    local.get 78
    i32.store8 offset=22
    local.get 5
    i32.load8_u offset=22
    local.set 79
    i32.const 16
    local.set 80
    local.get 79
    local.get 80
    i32.shl
    local.set 81
    local.get 5
    i32.load16_u offset=20
    local.set 82
    local.get 82
    local.get 81
    i32.or
    local.set 83
    i32.const 1
    local.set 84
    local.get 84
    local.set 85
    local.get 6
    local.set 86
    local.get 85
    local.get 86
    i32.lt_u
    local.set 87
    i32.const 1
    local.set 88
    local.get 87
    local.get 88
    i32.and
    local.set 89
    block  ;; label = @1
      block  ;; label = @2
        local.get 89
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1
      local.set 90
      local.get 90
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u offset=1
    local.set 91
    i32.const 63
    local.set 92
    local.get 91
    local.get 92
    i32.and
    local.set 93
    local.get 83
    local.get 93
    i32.or
    local.set 94
    local.get 5
    local.get 94
    i32.store16 offset=20
    i32.const 2097151
    local.set 95
    local.get 94
    local.get 95
    i32.and
    local.set 96
    i32.const 16
    local.set 97
    local.get 96
    local.get 97
    i32.shr_u
    local.set 98
    local.get 5
    local.get 98
    i32.store8 offset=22
    local.get 5
    i32.load8_u offset=22
    local.set 99
    local.get 99
    local.get 97
    i32.shl
    local.set 100
    local.get 5
    i32.load16_u offset=20
    local.set 101
    local.get 101
    local.get 100
    i32.or
    local.set 102
    i32.const 128
    local.set 103
    local.get 102
    local.get 103
    i32.lt_u
    local.set 104
    i32.const 1
    local.set 105
    local.get 104
    local.get 105
    i32.and
    local.set 106
    block  ;; label = @1
      local.get 106
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 107
      local.get 107
      i64.load offset=1049336 align=4
      local.set 108
      local.get 0
      local.get 108
      i64.store align=4
      i32.const 32
      local.set 109
      local.get 5
      local.get 109
      i32.add
      local.set 110
      local.get 110
      global.set $__stack_pointer
      return
    end
    local.get 5
    i32.load8_u offset=22
    local.set 111
    i32.const 16
    local.set 112
    local.get 111
    local.get 112
    i32.shl
    local.set 113
    local.get 5
    i32.load16_u offset=20
    local.set 114
    local.get 114
    local.get 113
    i32.or
    local.set 115
    i32.const 0
    local.set 116
    local.get 5
    local.get 116
    i32.store16 offset=28
    local.get 5
    local.get 114
    i32.store16 offset=24
    i32.const 2097151
    local.set 117
    local.get 115
    local.get 117
    i32.and
    local.set 118
    local.get 118
    local.get 112
    i32.shr_u
    local.set 119
    local.get 5
    local.get 119
    i32.store8 offset=26
    local.get 5
    i64.load offset=24
    local.set 120
    local.get 0
    local.get 120
    i64.store align=4
    i32.const 32
    local.set 121
    local.get 5
    local.get 121
    i32.add
    local.set 122
    local.get 122
    global.set $__stack_pointer
    return)
  (func $unicode.utf8Decode3 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 32
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 2
    local.set 6
    local.get 1
    local.set 7
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    i32.const 3
    local.set 8
    local.get 6
    local.set 9
    local.get 8
    local.set 10
    local.get 9
    local.get 10
    i32.eq
    local.set 11
    local.get 11
    call $debug.assert
    i32.const 0
    local.set 12
    local.get 12
    local.set 13
    local.get 6
    local.set 14
    local.get 13
    local.get 14
    i32.lt_u
    local.set 15
    i32.const 1
    local.set 16
    local.get 15
    local.get 16
    i32.and
    local.set 17
    block  ;; label = @1
      block  ;; label = @2
        local.get 17
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 18
      local.get 18
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u
    local.set 19
    i32.const -16
    local.set 20
    local.get 19
    local.get 20
    i32.and
    local.set 21
    i32.const 224
    local.set 22
    i32.const 255
    local.set 23
    local.get 21
    local.get 23
    i32.and
    local.set 24
    i32.const 255
    local.set 25
    local.get 22
    local.get 25
    i32.and
    local.set 26
    local.get 24
    local.get 26
    i32.eq
    local.set 27
    local.get 27
    call $debug.assert
    i32.const 0
    local.set 28
    local.get 28
    local.set 29
    local.get 6
    local.set 30
    local.get 29
    local.get 30
    i32.lt_u
    local.set 31
    i32.const 1
    local.set 32
    local.get 31
    local.get 32
    i32.and
    local.set 33
    block  ;; label = @1
      block  ;; label = @2
        local.get 33
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 34
      local.get 34
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u
    local.set 35
    i32.const 15
    local.set 36
    local.get 35
    local.get 36
    i32.and
    local.set 37
    i32.const 0
    local.set 38
    local.get 5
    local.get 38
    i32.store8 offset=22
    local.get 5
    local.get 37
    i32.store16 offset=20
    i32.const 1
    local.set 39
    local.get 39
    local.set 40
    local.get 6
    local.set 41
    local.get 40
    local.get 41
    i32.lt_u
    local.set 42
    i32.const 1
    local.set 43
    local.get 42
    local.get 43
    i32.and
    local.set 44
    block  ;; label = @1
      block  ;; label = @2
        local.get 44
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1
      local.set 45
      local.get 45
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u offset=1
    local.set 46
    i32.const -64
    local.set 47
    local.get 46
    local.get 47
    i32.and
    local.set 48
    i32.const 128
    local.set 49
    i32.const 255
    local.set 50
    local.get 48
    local.get 50
    i32.and
    local.set 51
    i32.const 255
    local.set 52
    local.get 49
    local.get 52
    i32.and
    local.set 53
    local.get 51
    local.get 53
    i32.ne
    local.set 54
    i32.const 1
    local.set 55
    local.get 54
    local.get 55
    i32.and
    local.set 56
    block  ;; label = @1
      local.get 56
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 57
      local.get 57
      i64.load offset=1049344 align=4
      local.set 58
      local.get 0
      local.get 58
      i64.store align=4
      i32.const 32
      local.set 59
      local.get 5
      local.get 59
      i32.add
      local.set 60
      local.get 60
      global.set $__stack_pointer
      return
    end
    local.get 5
    i32.load8_u offset=22
    local.set 61
    i32.const 16
    local.set 62
    local.get 61
    local.get 62
    i32.shl
    local.set 63
    local.get 5
    i32.load16_u offset=20
    local.set 64
    local.get 64
    local.get 63
    i32.or
    local.set 65
    i32.const 1
    local.set 66
    i32.const 1
    local.set 67
    local.get 66
    local.get 67
    i32.and
    local.set 68
    block  ;; label = @1
      block  ;; label = @2
        local.get 68
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1048768
      local.set 69
      i32.const 42
      local.set 70
      i32.const 0
      local.set 71
      i32.const 1049352
      local.set 72
      local.get 69
      local.get 70
      local.get 71
      local.get 72
      call $builtin.default_panic
      unreachable
    end
    i32.const 6
    local.set 73
    local.get 65
    local.get 73
    i32.shl
    local.set 74
    local.get 5
    local.get 74
    i32.store16 offset=20
    i32.const 10
    local.set 75
    local.get 65
    local.get 75
    i32.shr_u
    local.set 76
    i32.const 31
    local.set 77
    local.get 76
    local.get 77
    i32.and
    local.set 78
    local.get 5
    local.get 78
    i32.store8 offset=22
    local.get 5
    i32.load8_u offset=22
    local.set 79
    i32.const 16
    local.set 80
    local.get 79
    local.get 80
    i32.shl
    local.set 81
    local.get 5
    i32.load16_u offset=20
    local.set 82
    local.get 82
    local.get 81
    i32.or
    local.set 83
    i32.const 1
    local.set 84
    local.get 84
    local.set 85
    local.get 6
    local.set 86
    local.get 85
    local.get 86
    i32.lt_u
    local.set 87
    i32.const 1
    local.set 88
    local.get 87
    local.get 88
    i32.and
    local.set 89
    block  ;; label = @1
      block  ;; label = @2
        local.get 89
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1
      local.set 90
      local.get 90
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u offset=1
    local.set 91
    i32.const 63
    local.set 92
    local.get 91
    local.get 92
    i32.and
    local.set 93
    local.get 83
    local.get 93
    i32.or
    local.set 94
    local.get 5
    local.get 94
    i32.store16 offset=20
    i32.const 2097151
    local.set 95
    local.get 94
    local.get 95
    i32.and
    local.set 96
    i32.const 16
    local.set 97
    local.get 96
    local.get 97
    i32.shr_u
    local.set 98
    local.get 5
    local.get 98
    i32.store8 offset=22
    i32.const 2
    local.set 99
    local.get 99
    local.set 100
    local.get 6
    local.set 101
    local.get 100
    local.get 101
    i32.lt_u
    local.set 102
    i32.const 1
    local.set 103
    local.get 102
    local.get 103
    i32.and
    local.set 104
    block  ;; label = @1
      block  ;; label = @2
        local.get 104
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 2
      local.set 105
      local.get 105
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u offset=2
    local.set 106
    i32.const -64
    local.set 107
    local.get 106
    local.get 107
    i32.and
    local.set 108
    i32.const 128
    local.set 109
    i32.const 255
    local.set 110
    local.get 108
    local.get 110
    i32.and
    local.set 111
    i32.const 255
    local.set 112
    local.get 109
    local.get 112
    i32.and
    local.set 113
    local.get 111
    local.get 113
    i32.ne
    local.set 114
    i32.const 1
    local.set 115
    local.get 114
    local.get 115
    i32.and
    local.set 116
    block  ;; label = @1
      local.get 116
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 117
      local.get 117
      i64.load offset=1049360 align=4
      local.set 118
      local.get 0
      local.get 118
      i64.store align=4
      i32.const 32
      local.set 119
      local.get 5
      local.get 119
      i32.add
      local.set 120
      local.get 120
      global.set $__stack_pointer
      return
    end
    local.get 5
    i32.load8_u offset=22
    local.set 121
    i32.const 16
    local.set 122
    local.get 121
    local.get 122
    i32.shl
    local.set 123
    local.get 5
    i32.load16_u offset=20
    local.set 124
    local.get 124
    local.get 123
    i32.or
    local.set 125
    i32.const 1
    local.set 126
    i32.const 1
    local.set 127
    local.get 126
    local.get 127
    i32.and
    local.set 128
    block  ;; label = @1
      block  ;; label = @2
        local.get 128
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1048768
      local.set 129
      i32.const 42
      local.set 130
      i32.const 0
      local.set 131
      i32.const 1049368
      local.set 132
      local.get 129
      local.get 130
      local.get 131
      local.get 132
      call $builtin.default_panic
      unreachable
    end
    i32.const 6
    local.set 133
    local.get 125
    local.get 133
    i32.shl
    local.set 134
    local.get 5
    local.get 134
    i32.store16 offset=20
    i32.const 10
    local.set 135
    local.get 125
    local.get 135
    i32.shr_u
    local.set 136
    i32.const 31
    local.set 137
    local.get 136
    local.get 137
    i32.and
    local.set 138
    local.get 5
    local.get 138
    i32.store8 offset=22
    local.get 5
    i32.load8_u offset=22
    local.set 139
    i32.const 16
    local.set 140
    local.get 139
    local.get 140
    i32.shl
    local.set 141
    local.get 5
    i32.load16_u offset=20
    local.set 142
    local.get 142
    local.get 141
    i32.or
    local.set 143
    i32.const 2
    local.set 144
    local.get 144
    local.set 145
    local.get 6
    local.set 146
    local.get 145
    local.get 146
    i32.lt_u
    local.set 147
    i32.const 1
    local.set 148
    local.get 147
    local.get 148
    i32.and
    local.set 149
    block  ;; label = @1
      block  ;; label = @2
        local.get 149
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 2
      local.set 150
      local.get 150
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u offset=2
    local.set 151
    i32.const 63
    local.set 152
    local.get 151
    local.get 152
    i32.and
    local.set 153
    local.get 143
    local.get 153
    i32.or
    local.set 154
    local.get 5
    local.get 154
    i32.store16 offset=20
    i32.const 2097151
    local.set 155
    local.get 154
    local.get 155
    i32.and
    local.set 156
    i32.const 16
    local.set 157
    local.get 156
    local.get 157
    i32.shr_u
    local.set 158
    local.get 5
    local.get 158
    i32.store8 offset=22
    local.get 5
    i32.load8_u offset=22
    local.set 159
    local.get 159
    local.get 157
    i32.shl
    local.set 160
    local.get 5
    i32.load16_u offset=20
    local.set 161
    local.get 161
    local.get 160
    i32.or
    local.set 162
    i32.const 2048
    local.set 163
    local.get 162
    local.get 163
    i32.lt_u
    local.set 164
    i32.const 1
    local.set 165
    local.get 164
    local.get 165
    i32.and
    local.set 166
    block  ;; label = @1
      local.get 166
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 167
      local.get 167
      i64.load offset=1049376 align=4
      local.set 168
      local.get 0
      local.get 168
      i64.store align=4
      i32.const 32
      local.set 169
      local.get 5
      local.get 169
      i32.add
      local.set 170
      local.get 170
      global.set $__stack_pointer
      return
    end
    local.get 5
    i32.load8_u offset=22
    local.set 171
    i32.const 16
    local.set 172
    local.get 171
    local.get 172
    i32.shl
    local.set 173
    local.get 5
    i32.load16_u offset=20
    local.set 174
    local.get 174
    local.get 173
    i32.or
    local.set 175
    i32.const 55295
    local.set 176
    local.get 175
    local.get 176
    i32.gt_u
    local.set 177
    i32.const 1
    local.set 178
    local.get 177
    local.get 178
    i32.and
    local.set 179
    block  ;; label = @1
      block  ;; label = @2
        local.get 179
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load8_u offset=22
        local.set 180
        i32.const 16
        local.set 181
        local.get 180
        local.get 181
        i32.shl
        local.set 182
        local.get 5
        i32.load16_u offset=20
        local.set 183
        local.get 183
        local.get 182
        i32.or
        local.set 184
        i32.const 57344
        local.set 185
        local.get 184
        local.get 185
        i32.lt_u
        local.set 186
        local.get 186
        local.set 187
        br 1 (;@1;)
      end
      i32.const 0
      local.set 188
      local.get 188
      local.set 187
    end
    local.get 187
    local.set 189
    i32.const 1
    local.set 190
    local.get 189
    local.get 190
    i32.and
    local.set 191
    block  ;; label = @1
      local.get 191
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 192
      local.get 192
      i64.load offset=1049384 align=4
      local.set 193
      local.get 0
      local.get 193
      i64.store align=4
      i32.const 32
      local.set 194
      local.get 5
      local.get 194
      i32.add
      local.set 195
      local.get 195
      global.set $__stack_pointer
      return
    end
    local.get 5
    i32.load8_u offset=22
    local.set 196
    i32.const 16
    local.set 197
    local.get 196
    local.get 197
    i32.shl
    local.set 198
    local.get 5
    i32.load16_u offset=20
    local.set 199
    local.get 199
    local.get 198
    i32.or
    local.set 200
    i32.const 0
    local.set 201
    local.get 5
    local.get 201
    i32.store16 offset=28
    local.get 5
    local.get 199
    i32.store16 offset=24
    i32.const 2097151
    local.set 202
    local.get 200
    local.get 202
    i32.and
    local.set 203
    local.get 203
    local.get 197
    i32.shr_u
    local.set 204
    local.get 5
    local.get 204
    i32.store8 offset=26
    local.get 5
    i64.load offset=24
    local.set 205
    local.get 0
    local.get 205
    i64.store align=4
    i32.const 32
    local.set 206
    local.get 5
    local.get 206
    i32.add
    local.set 207
    local.get 207
    global.set $__stack_pointer
    return)
  (func $unicode.utf8Decode4 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 32
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 2
    local.set 6
    local.get 1
    local.set 7
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    i32.const 4
    local.set 8
    local.get 6
    local.set 9
    local.get 8
    local.set 10
    local.get 9
    local.get 10
    i32.eq
    local.set 11
    local.get 11
    call $debug.assert
    i32.const 0
    local.set 12
    local.get 12
    local.set 13
    local.get 6
    local.set 14
    local.get 13
    local.get 14
    i32.lt_u
    local.set 15
    i32.const 1
    local.set 16
    local.get 15
    local.get 16
    i32.and
    local.set 17
    block  ;; label = @1
      block  ;; label = @2
        local.get 17
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 18
      local.get 18
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u
    local.set 19
    i32.const -8
    local.set 20
    local.get 19
    local.get 20
    i32.and
    local.set 21
    i32.const 240
    local.set 22
    i32.const 255
    local.set 23
    local.get 21
    local.get 23
    i32.and
    local.set 24
    i32.const 255
    local.set 25
    local.get 22
    local.get 25
    i32.and
    local.set 26
    local.get 24
    local.get 26
    i32.eq
    local.set 27
    local.get 27
    call $debug.assert
    i32.const 0
    local.set 28
    local.get 28
    local.set 29
    local.get 6
    local.set 30
    local.get 29
    local.get 30
    i32.lt_u
    local.set 31
    i32.const 1
    local.set 32
    local.get 31
    local.get 32
    i32.and
    local.set 33
    block  ;; label = @1
      block  ;; label = @2
        local.get 33
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 34
      local.get 34
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u
    local.set 35
    i32.const 7
    local.set 36
    local.get 35
    local.get 36
    i32.and
    local.set 37
    i32.const 0
    local.set 38
    local.get 5
    local.get 38
    i32.store8 offset=22
    local.get 5
    local.get 37
    i32.store16 offset=20
    i32.const 1
    local.set 39
    local.get 39
    local.set 40
    local.get 6
    local.set 41
    local.get 40
    local.get 41
    i32.lt_u
    local.set 42
    i32.const 1
    local.set 43
    local.get 42
    local.get 43
    i32.and
    local.set 44
    block  ;; label = @1
      block  ;; label = @2
        local.get 44
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1
      local.set 45
      local.get 45
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u offset=1
    local.set 46
    i32.const -64
    local.set 47
    local.get 46
    local.get 47
    i32.and
    local.set 48
    i32.const 128
    local.set 49
    i32.const 255
    local.set 50
    local.get 48
    local.get 50
    i32.and
    local.set 51
    i32.const 255
    local.set 52
    local.get 49
    local.get 52
    i32.and
    local.set 53
    local.get 51
    local.get 53
    i32.ne
    local.set 54
    i32.const 1
    local.set 55
    local.get 54
    local.get 55
    i32.and
    local.set 56
    block  ;; label = @1
      local.get 56
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 57
      local.get 57
      i64.load offset=1049392 align=4
      local.set 58
      local.get 0
      local.get 58
      i64.store align=4
      i32.const 32
      local.set 59
      local.get 5
      local.get 59
      i32.add
      local.set 60
      local.get 60
      global.set $__stack_pointer
      return
    end
    local.get 5
    i32.load8_u offset=22
    local.set 61
    i32.const 16
    local.set 62
    local.get 61
    local.get 62
    i32.shl
    local.set 63
    local.get 5
    i32.load16_u offset=20
    local.set 64
    local.get 64
    local.get 63
    i32.or
    local.set 65
    i32.const 1
    local.set 66
    i32.const 1
    local.set 67
    local.get 66
    local.get 67
    i32.and
    local.set 68
    block  ;; label = @1
      block  ;; label = @2
        local.get 68
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1048768
      local.set 69
      i32.const 42
      local.set 70
      i32.const 0
      local.set 71
      i32.const 1049400
      local.set 72
      local.get 69
      local.get 70
      local.get 71
      local.get 72
      call $builtin.default_panic
      unreachable
    end
    i32.const 6
    local.set 73
    local.get 65
    local.get 73
    i32.shl
    local.set 74
    local.get 5
    local.get 74
    i32.store16 offset=20
    i32.const 10
    local.set 75
    local.get 65
    local.get 75
    i32.shr_u
    local.set 76
    i32.const 31
    local.set 77
    local.get 76
    local.get 77
    i32.and
    local.set 78
    local.get 5
    local.get 78
    i32.store8 offset=22
    local.get 5
    i32.load8_u offset=22
    local.set 79
    i32.const 16
    local.set 80
    local.get 79
    local.get 80
    i32.shl
    local.set 81
    local.get 5
    i32.load16_u offset=20
    local.set 82
    local.get 82
    local.get 81
    i32.or
    local.set 83
    i32.const 1
    local.set 84
    local.get 84
    local.set 85
    local.get 6
    local.set 86
    local.get 85
    local.get 86
    i32.lt_u
    local.set 87
    i32.const 1
    local.set 88
    local.get 87
    local.get 88
    i32.and
    local.set 89
    block  ;; label = @1
      block  ;; label = @2
        local.get 89
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1
      local.set 90
      local.get 90
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u offset=1
    local.set 91
    i32.const 63
    local.set 92
    local.get 91
    local.get 92
    i32.and
    local.set 93
    local.get 83
    local.get 93
    i32.or
    local.set 94
    local.get 5
    local.get 94
    i32.store16 offset=20
    i32.const 2097151
    local.set 95
    local.get 94
    local.get 95
    i32.and
    local.set 96
    i32.const 16
    local.set 97
    local.get 96
    local.get 97
    i32.shr_u
    local.set 98
    local.get 5
    local.get 98
    i32.store8 offset=22
    i32.const 2
    local.set 99
    local.get 99
    local.set 100
    local.get 6
    local.set 101
    local.get 100
    local.get 101
    i32.lt_u
    local.set 102
    i32.const 1
    local.set 103
    local.get 102
    local.get 103
    i32.and
    local.set 104
    block  ;; label = @1
      block  ;; label = @2
        local.get 104
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 2
      local.set 105
      local.get 105
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u offset=2
    local.set 106
    i32.const -64
    local.set 107
    local.get 106
    local.get 107
    i32.and
    local.set 108
    i32.const 128
    local.set 109
    i32.const 255
    local.set 110
    local.get 108
    local.get 110
    i32.and
    local.set 111
    i32.const 255
    local.set 112
    local.get 109
    local.get 112
    i32.and
    local.set 113
    local.get 111
    local.get 113
    i32.ne
    local.set 114
    i32.const 1
    local.set 115
    local.get 114
    local.get 115
    i32.and
    local.set 116
    block  ;; label = @1
      local.get 116
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 117
      local.get 117
      i64.load offset=1049408 align=4
      local.set 118
      local.get 0
      local.get 118
      i64.store align=4
      i32.const 32
      local.set 119
      local.get 5
      local.get 119
      i32.add
      local.set 120
      local.get 120
      global.set $__stack_pointer
      return
    end
    local.get 5
    i32.load8_u offset=22
    local.set 121
    i32.const 16
    local.set 122
    local.get 121
    local.get 122
    i32.shl
    local.set 123
    local.get 5
    i32.load16_u offset=20
    local.set 124
    local.get 124
    local.get 123
    i32.or
    local.set 125
    i32.const 1
    local.set 126
    i32.const 1
    local.set 127
    local.get 126
    local.get 127
    i32.and
    local.set 128
    block  ;; label = @1
      block  ;; label = @2
        local.get 128
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1048768
      local.set 129
      i32.const 42
      local.set 130
      i32.const 0
      local.set 131
      i32.const 1049416
      local.set 132
      local.get 129
      local.get 130
      local.get 131
      local.get 132
      call $builtin.default_panic
      unreachable
    end
    i32.const 6
    local.set 133
    local.get 125
    local.get 133
    i32.shl
    local.set 134
    local.get 5
    local.get 134
    i32.store16 offset=20
    i32.const 10
    local.set 135
    local.get 125
    local.get 135
    i32.shr_u
    local.set 136
    i32.const 31
    local.set 137
    local.get 136
    local.get 137
    i32.and
    local.set 138
    local.get 5
    local.get 138
    i32.store8 offset=22
    local.get 5
    i32.load8_u offset=22
    local.set 139
    i32.const 16
    local.set 140
    local.get 139
    local.get 140
    i32.shl
    local.set 141
    local.get 5
    i32.load16_u offset=20
    local.set 142
    local.get 142
    local.get 141
    i32.or
    local.set 143
    i32.const 2
    local.set 144
    local.get 144
    local.set 145
    local.get 6
    local.set 146
    local.get 145
    local.get 146
    i32.lt_u
    local.set 147
    i32.const 1
    local.set 148
    local.get 147
    local.get 148
    i32.and
    local.set 149
    block  ;; label = @1
      block  ;; label = @2
        local.get 149
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 2
      local.set 150
      local.get 150
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u offset=2
    local.set 151
    i32.const 63
    local.set 152
    local.get 151
    local.get 152
    i32.and
    local.set 153
    local.get 143
    local.get 153
    i32.or
    local.set 154
    local.get 5
    local.get 154
    i32.store16 offset=20
    i32.const 2097151
    local.set 155
    local.get 154
    local.get 155
    i32.and
    local.set 156
    i32.const 16
    local.set 157
    local.get 156
    local.get 157
    i32.shr_u
    local.set 158
    local.get 5
    local.get 158
    i32.store8 offset=22
    i32.const 3
    local.set 159
    local.get 159
    local.set 160
    local.get 6
    local.set 161
    local.get 160
    local.get 161
    i32.lt_u
    local.set 162
    i32.const 1
    local.set 163
    local.get 162
    local.get 163
    i32.and
    local.set 164
    block  ;; label = @1
      block  ;; label = @2
        local.get 164
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 3
      local.set 165
      local.get 165
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u offset=3
    local.set 166
    i32.const -64
    local.set 167
    local.get 166
    local.get 167
    i32.and
    local.set 168
    i32.const 128
    local.set 169
    i32.const 255
    local.set 170
    local.get 168
    local.get 170
    i32.and
    local.set 171
    i32.const 255
    local.set 172
    local.get 169
    local.get 172
    i32.and
    local.set 173
    local.get 171
    local.get 173
    i32.ne
    local.set 174
    i32.const 1
    local.set 175
    local.get 174
    local.get 175
    i32.and
    local.set 176
    block  ;; label = @1
      local.get 176
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 177
      local.get 177
      i64.load offset=1049424 align=4
      local.set 178
      local.get 0
      local.get 178
      i64.store align=4
      i32.const 32
      local.set 179
      local.get 5
      local.get 179
      i32.add
      local.set 180
      local.get 180
      global.set $__stack_pointer
      return
    end
    local.get 5
    i32.load8_u offset=22
    local.set 181
    i32.const 16
    local.set 182
    local.get 181
    local.get 182
    i32.shl
    local.set 183
    local.get 5
    i32.load16_u offset=20
    local.set 184
    local.get 184
    local.get 183
    i32.or
    local.set 185
    i32.const 1
    local.set 186
    i32.const 1
    local.set 187
    local.get 186
    local.get 187
    i32.and
    local.set 188
    block  ;; label = @1
      block  ;; label = @2
        local.get 188
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1048768
      local.set 189
      i32.const 42
      local.set 190
      i32.const 0
      local.set 191
      i32.const 1049432
      local.set 192
      local.get 189
      local.get 190
      local.get 191
      local.get 192
      call $builtin.default_panic
      unreachable
    end
    i32.const 6
    local.set 193
    local.get 185
    local.get 193
    i32.shl
    local.set 194
    local.get 5
    local.get 194
    i32.store16 offset=20
    i32.const 10
    local.set 195
    local.get 185
    local.get 195
    i32.shr_u
    local.set 196
    i32.const 31
    local.set 197
    local.get 196
    local.get 197
    i32.and
    local.set 198
    local.get 5
    local.get 198
    i32.store8 offset=22
    local.get 5
    i32.load8_u offset=22
    local.set 199
    i32.const 16
    local.set 200
    local.get 199
    local.get 200
    i32.shl
    local.set 201
    local.get 5
    i32.load16_u offset=20
    local.set 202
    local.get 202
    local.get 201
    i32.or
    local.set 203
    i32.const 3
    local.set 204
    local.get 204
    local.set 205
    local.get 6
    local.set 206
    local.get 205
    local.get 206
    i32.lt_u
    local.set 207
    i32.const 1
    local.set 208
    local.get 207
    local.get 208
    i32.and
    local.set 209
    block  ;; label = @1
      block  ;; label = @2
        local.get 209
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 3
      local.set 210
      local.get 210
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    i32.load8_u offset=3
    local.set 211
    i32.const 63
    local.set 212
    local.get 211
    local.get 212
    i32.and
    local.set 213
    local.get 203
    local.get 213
    i32.or
    local.set 214
    local.get 5
    local.get 214
    i32.store16 offset=20
    i32.const 2097151
    local.set 215
    local.get 214
    local.get 215
    i32.and
    local.set 216
    i32.const 16
    local.set 217
    local.get 216
    local.get 217
    i32.shr_u
    local.set 218
    local.get 5
    local.get 218
    i32.store8 offset=22
    local.get 5
    i32.load8_u offset=22
    local.set 219
    local.get 219
    local.get 217
    i32.shl
    local.set 220
    local.get 5
    i32.load16_u offset=20
    local.set 221
    local.get 221
    local.get 220
    i32.or
    local.set 222
    i32.const 65536
    local.set 223
    local.get 222
    local.get 223
    i32.lt_u
    local.set 224
    i32.const 1
    local.set 225
    local.get 224
    local.get 225
    i32.and
    local.set 226
    block  ;; label = @1
      local.get 226
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 227
      local.get 227
      i64.load offset=1049440 align=4
      local.set 228
      local.get 0
      local.get 228
      i64.store align=4
      i32.const 32
      local.set 229
      local.get 5
      local.get 229
      i32.add
      local.set 230
      local.get 230
      global.set $__stack_pointer
      return
    end
    local.get 5
    i32.load8_u offset=22
    local.set 231
    i32.const 16
    local.set 232
    local.get 231
    local.get 232
    i32.shl
    local.set 233
    local.get 5
    i32.load16_u offset=20
    local.set 234
    local.get 234
    local.get 233
    i32.or
    local.set 235
    i32.const 1114111
    local.set 236
    local.get 235
    local.get 236
    i32.gt_u
    local.set 237
    i32.const 1
    local.set 238
    local.get 237
    local.get 238
    i32.and
    local.set 239
    block  ;; label = @1
      local.get 239
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 240
      local.get 240
      i64.load offset=1049448 align=4
      local.set 241
      local.get 0
      local.get 241
      i64.store align=4
      i32.const 32
      local.set 242
      local.get 5
      local.get 242
      i32.add
      local.set 243
      local.get 243
      global.set $__stack_pointer
      return
    end
    local.get 5
    i32.load8_u offset=22
    local.set 244
    i32.const 16
    local.set 245
    local.get 244
    local.get 245
    i32.shl
    local.set 246
    local.get 5
    i32.load16_u offset=20
    local.set 247
    local.get 247
    local.get 246
    i32.or
    local.set 248
    i32.const 0
    local.set 249
    local.get 5
    local.get 249
    i32.store16 offset=28
    local.get 5
    local.get 247
    i32.store16 offset=24
    i32.const 2097151
    local.set 250
    local.get 248
    local.get 250
    i32.and
    local.set 251
    local.get 251
    local.get 245
    i32.shr_u
    local.set 252
    local.get 5
    local.get 252
    i32.store8 offset=26
    local.get 5
    i64.load offset=24
    local.set 253
    local.get 0
    local.get 253
    i64.store align=4
    i32.const 32
    local.set 254
    local.get 5
    local.get 254
    i32.add
    local.set 255
    local.get 255
    global.set $__stack_pointer
    return)
  (func $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeByteNTimes (type 8) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 304
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store8 offset=3
    local.get 5
    local.get 2
    i32.store offset=4
    i32.const 256
    local.set 6
    i32.const 170
    local.set 7
    i32.const 8
    local.set 8
    local.get 5
    local.get 8
    i32.add
    local.set 9
    local.get 9
    local.get 7
    local.get 6
    call $memset
    drop
    i32.const 8
    local.set 10
    local.get 5
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.set 12
    i32.const 1
    local.set 13
    i32.const 1
    local.set 14
    local.get 13
    local.get 14
    i32.and
    local.set 15
    block  ;; label = @1
      block  ;; label = @2
        local.get 15
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 16
      i32.const 256
      local.set 17
      local.get 16
      local.get 17
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    i32.const 256
    local.set 18
    local.get 12
    local.set 19
    local.get 19
    local.get 18
    local.get 1
    call $mem.set__anon_2369
    local.get 5
    local.get 2
    i32.store offset=264
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=264
        local.set 20
        i32.const 0
        local.set 21
        local.get 20
        local.set 22
        local.get 21
        local.set 23
        local.get 22
        local.get 23
        i32.gt_u
        local.set 24
        i32.const 1
        local.set 25
        local.get 24
        local.get 25
        i32.and
        local.set 26
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 26
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                i32.load offset=264
                local.set 27
                i32.const 256
                local.set 28
                local.get 27
                local.get 28
                call $math.min__anon_2370
                local.set 29
                local.get 5
                local.get 29
                i32.store offset=268
                local.get 0
                i32.load
                local.set 30
                local.get 5
                local.get 30
                i32.store offset=272
                local.get 5
                i32.load offset=272
                local.set 31
                local.get 5
                local.get 31
                i32.store offset=280
                i32.const 8
                local.set 32
                local.get 5
                local.get 32
                i32.add
                local.set 33
                local.get 33
                local.set 34
                i32.const 0
                local.set 35
                local.get 35
                local.set 36
                local.get 29
                local.set 37
                local.get 36
                local.get 37
                i32.le_u
                local.set 38
                i32.const 1
                local.set 39
                local.get 38
                local.get 39
                i32.and
                local.set 40
                local.get 40
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              br 4 (;@1;)
            end
            br 1 (;@3;)
          end
          i32.const 0
          local.set 41
          local.get 41
          local.get 29
          call $builtin.panicStartGreaterThanEnd
          unreachable
        end
        i32.const 256
        local.set 42
        local.get 29
        local.set 43
        local.get 42
        local.set 44
        local.get 43
        local.get 44
        i32.le_u
        local.set 45
        i32.const 1
        local.set 46
        local.get 45
        local.get 46
        i32.and
        local.set 47
        block  ;; label = @3
          block  ;; label = @4
            local.get 47
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 256
          local.set 48
          local.get 29
          local.get 48
          call $builtin.panicOutOfBounds
          unreachable
        end
        i32.const 0
        local.set 49
        local.get 49
        local.set 50
        local.get 29
        local.set 51
        local.get 50
        local.get 51
        i32.le_u
        local.set 52
        i32.const 1
        local.set 53
        local.get 52
        local.get 53
        i32.and
        local.set 54
        block  ;; label = @3
          block  ;; label = @4
            local.get 54
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 0
          local.set 55
          local.get 55
          local.get 29
          call $builtin.panicOutOfBounds
          unreachable
        end
        local.get 5
        local.get 29
        i32.store offset=292
        local.get 5
        local.get 34
        i32.store offset=288
        local.get 5
        i32.load offset=292
        local.set 56
        local.get 5
        i32.load offset=288
        local.set 57
        i32.const 280
        local.set 58
        local.get 5
        local.get 58
        i32.add
        local.set 59
        local.get 59
        local.set 60
        local.get 60
        local.get 57
        local.get 56
        call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeAll
        local.set 61
        i32.const 0
        local.set 62
        i32.const 65535
        local.set 63
        local.get 61
        local.get 63
        i32.and
        local.set 64
        i32.const 65535
        local.set 65
        local.get 62
        local.get 65
        i32.and
        local.set 66
        local.get 64
        local.get 66
        i32.ne
        local.set 67
        i32.const 1
        local.set 68
        local.get 67
        local.get 68
        i32.and
        local.set 69
        block  ;; label = @3
          local.get 69
          i32.eqz
          br_if 0 (;@3;)
          i32.const 304
          local.set 70
          local.get 5
          local.get 70
          i32.add
          local.set 71
          local.get 71
          global.set $__stack_pointer
          local.get 61
          return
        end
        local.get 5
        i32.load offset=264
        local.set 72
        local.get 72
        local.get 29
        i32.sub
        local.set 73
        local.get 73
        local.get 72
        i32.gt_u
        local.set 74
        local.get 5
        local.get 73
        i32.store offset=296
        i32.const 1
        local.set 75
        local.get 74
        local.get 75
        i32.and
        local.set 76
        local.get 5
        local.get 76
        i32.store8 offset=300
        local.get 5
        i32.load8_u offset=300
        local.set 77
        i32.const 0
        local.set 78
        i32.const 1
        local.set 79
        local.get 77
        local.get 79
        i32.and
        local.set 80
        i32.const 1
        local.set 81
        local.get 78
        local.get 81
        i32.and
        local.set 82
        local.get 80
        local.get 82
        i32.eq
        local.set 83
        i32.const 1
        local.set 84
        local.get 83
        local.get 84
        i32.and
        local.set 85
        block  ;; label = @3
          block  ;; label = @4
            local.get 85
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 1048669
          local.set 86
          i32.const 16
          local.set 87
          i32.const 0
          local.set 88
          i32.const 1049260
          local.set 89
          local.get 86
          local.get 87
          local.get 88
          local.get 89
          call $builtin.default_panic
          unreachable
        end
        local.get 5
        i32.load offset=296
        local.set 90
        local.get 5
        local.get 90
        i32.store offset=264
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 91
    i32.const 304
    local.set 92
    local.get 5
    local.get 92
    i32.add
    local.set 93
    local.get 93
    global.set $__stack_pointer
    local.get 91
    return)
  (func $mem.set__anon_2369 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 48
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store8 offset=23
    local.get 5
    local.get 1
    i32.store offset=28
    local.get 5
    local.get 0
    i32.store offset=24
    local.get 5
    i32.load offset=28
    local.set 6
    local.get 5
    i32.load offset=24
    drop
    i32.const 0
    local.set 7
    local.get 5
    local.get 7
    i32.store offset=32
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=32
        local.set 8
        local.get 8
        local.set 9
        local.get 6
        local.set 10
        local.get 9
        local.get 10
        i32.lt_u
        local.set 11
        i32.const 1
        local.set 12
        local.get 11
        local.get 12
        i32.and
        local.set 13
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 13
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                i32.load offset=28
                local.set 14
                local.get 5
                i32.load offset=24
                local.set 15
                local.get 8
                local.set 16
                local.get 14
                local.set 17
                local.get 16
                local.get 17
                i32.lt_u
                local.set 18
                i32.const 1
                local.set 19
                local.get 18
                local.get 19
                i32.and
                local.set 20
                local.get 20
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              br 4 (;@1;)
            end
            br 1 (;@3;)
          end
          local.get 8
          local.get 14
          call $builtin.panicOutOfBounds
          unreachable
        end
        local.get 15
        local.get 8
        i32.add
        local.set 21
        local.get 5
        local.get 21
        i32.store offset=36
        local.get 21
        local.get 2
        i32.store8
        local.get 5
        i32.load offset=32
        local.set 22
        i32.const 1
        local.set 23
        local.get 22
        local.get 23
        i32.add
        local.set 24
        local.get 24
        i32.eqz
        local.set 25
        local.get 5
        local.get 24
        i32.store offset=40
        i32.const 1
        local.set 26
        local.get 25
        local.get 26
        i32.and
        local.set 27
        local.get 5
        local.get 27
        i32.store8 offset=44
        local.get 5
        i32.load8_u offset=44
        local.set 28
        i32.const 0
        local.set 29
        i32.const 1
        local.set 30
        local.get 28
        local.get 30
        i32.and
        local.set 31
        i32.const 1
        local.set 32
        local.get 29
        local.get 32
        i32.and
        local.set 33
        local.get 31
        local.get 33
        i32.eq
        local.set 34
        i32.const 1
        local.set 35
        local.get 34
        local.get 35
        i32.and
        local.set 36
        block  ;; label = @3
          block  ;; label = @4
            local.get 36
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 1048669
          local.set 37
          i32.const 16
          local.set 38
          i32.const 0
          local.set 39
          i32.const 1049456
          local.set 40
          local.get 37
          local.get 38
          local.get 39
          local.get 40
          call $builtin.default_panic
          unreachable
        end
        local.get 5
        i32.load offset=40
        local.set 41
        local.get 5
        local.get 41
        i32.store offset=32
        br 0 (;@2;)
      end
    end
    i32.const 48
    local.set 42
    local.get 5
    local.get 42
    i32.add
    local.set 43
    local.get 43
    global.set $__stack_pointer
    return)
  (func $math.min__anon_2370 (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=8
    local.get 4
    local.get 1
    i32.store offset=12
    local.get 0
    local.set 5
    local.get 1
    local.set 6
    local.get 5
    local.get 6
    i32.lt_u
    local.set 7
    i32.const 1
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    block  ;; label = @1
      local.get 9
      i32.eqz
      br_if 0 (;@1;)
      i32.const 16
      local.set 10
      local.get 4
      local.get 10
      i32.add
      local.set 11
      local.get 11
      global.set $__stack_pointer
      local.get 0
      return
    end
    i32.const 16
    local.set 12
    local.get 4
    local.get 12
    i32.add
    local.set 13
    local.get 13
    global.set $__stack_pointer
    local.get 1
    return)
  (func $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.print__anon_2371 (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $fmt.format__anon_2561
    local.set 5
    local.get 4
    local.get 5
    i32.store16 offset=14
    local.get 4
    i32.load16_u offset=14
    local.set 6
    i32.const 16
    local.set 7
    local.get 4
    local.get 7
    i32.add
    local.set 8
    local.get 8
    global.set $__stack_pointer
    local.get 6
    return)
  (func $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.print__anon_2467 (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 0
    call $fmt.format__anon_2580
    local.set 4
    local.get 3
    local.get 4
    i32.store16 offset=14
    local.get 3
    i32.load16_u offset=14
    local.set 5
    i32.const 16
    local.set 6
    local.get 3
    local.get 6
    i32.add
    local.set 7
    local.get 7
    global.set $__stack_pointer
    local.get 5
    return)
  (func $fmt.bufPrint__anon_2468 (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 96
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 2
    local.set 7
    local.get 1
    local.set 8
    local.get 6
    local.get 2
    i32.store offset=20
    local.get 6
    local.get 1
    i32.store offset=16
    i32.const 40
    local.set 9
    local.get 6
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.set 11
    local.get 11
    local.get 8
    local.get 7
    call $io.fixed_buffer_stream.fixedBufferStream__anon_2481
    i32.const 8
    local.set 12
    i32.const 24
    local.set 13
    local.get 6
    local.get 13
    i32.add
    local.set 14
    local.get 14
    local.get 12
    i32.add
    local.set 15
    i32.const 40
    local.set 16
    local.get 6
    local.get 16
    i32.add
    local.set 17
    local.get 17
    local.get 12
    i32.add
    local.set 18
    local.get 18
    i32.load
    local.set 19
    local.get 15
    local.get 19
    i32.store
    local.get 6
    i64.load offset=40
    local.set 20
    local.get 6
    local.get 20
    i64.store offset=24
    i32.const 56
    local.set 21
    local.get 6
    local.get 21
    i32.add
    local.set 22
    local.get 22
    local.set 23
    i32.const 24
    local.set 24
    local.get 6
    local.get 24
    i32.add
    local.set 25
    local.get 25
    local.set 26
    local.get 23
    local.get 26
    call $io.fixed_buffer_stream.FixedBufferStream___u8_.writer
    i32.const 56
    local.set 27
    local.get 6
    local.get 27
    i32.add
    local.set 28
    local.get 28
    local.set 29
    local.get 29
    local.get 3
    call $fmt.format__anon_2588
    local.set 30
    i32.const 0
    local.set 31
    i32.const 65535
    local.set 32
    local.get 30
    local.get 32
    i32.and
    local.set 33
    i32.const 65535
    local.set 34
    local.get 31
    local.get 34
    i32.and
    local.set 35
    local.get 33
    local.get 35
    i32.ne
    local.set 36
    i32.const 1
    local.set 37
    local.get 36
    local.get 37
    i32.and
    local.set 38
    block  ;; label = @1
      local.get 38
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      local.get 30
      i32.store16 offset=72
      local.get 6
      i64.load offset=64
      local.set 39
      local.get 0
      local.get 39
      i64.store align=4
      i32.const 8
      local.set 40
      local.get 0
      local.get 40
      i32.add
      local.set 41
      i32.const 64
      local.set 42
      local.get 6
      local.get 42
      i32.add
      local.set 43
      local.get 43
      local.get 40
      i32.add
      local.set 44
      local.get 44
      i32.load
      local.set 45
      local.get 41
      local.get 45
      i32.store
      i32.const 96
      local.set 46
      local.get 6
      local.get 46
      i32.add
      local.set 47
      local.get 47
      global.set $__stack_pointer
      return
    end
    i32.const 8
    local.set 48
    local.get 6
    local.get 48
    i32.add
    local.set 49
    i32.const 24
    local.set 50
    local.get 6
    local.get 50
    i32.add
    local.set 51
    local.get 49
    local.get 51
    call $io.fixed_buffer_stream.FixedBufferStream___u8_.getWritten
    local.get 6
    i32.load offset=8
    local.set 52
    local.get 6
    i32.load offset=12
    local.set 53
    i32.const 0
    local.set 54
    local.get 6
    local.get 54
    i32.store16 offset=88
    local.get 6
    local.get 53
    i32.store offset=84
    local.get 6
    local.get 52
    i32.store offset=80
    local.get 6
    i64.load offset=80
    local.set 55
    local.get 0
    local.get 55
    i64.store align=4
    i32.const 8
    local.set 56
    local.get 0
    local.get 56
    i32.add
    local.set 57
    i32.const 80
    local.set 58
    local.get 6
    local.get 58
    i32.add
    local.set 59
    local.get 59
    local.get 56
    i32.add
    local.set 60
    local.get 60
    i32.load
    local.set 61
    local.get 57
    local.get 61
    i32.store
    i32.const 96
    local.set 62
    local.get 6
    local.get 62
    i32.add
    local.set 63
    local.get 63
    global.set $__stack_pointer
    return)
  (func $io.fixed_buffer_stream.fixedBufferStream__anon_2481 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 1
    local.get 2
    call $mem.span__anon_2607
    local.get 5
    i32.load
    local.set 6
    local.get 5
    i32.load offset=4
    local.set 7
    local.get 0
    local.get 7
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store
    i32.const 0
    local.set 8
    local.get 0
    local.get 8
    i32.store offset=8
    i32.const 16
    local.set 9
    local.get 5
    local.get 9
    i32.add
    local.set 10
    local.get 10
    global.set $__stack_pointer
    return)
  (func $io.fixed_buffer_stream.FixedBufferStream___u8_.writer (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store
    i32.const 16
    local.set 5
    local.get 4
    local.get 5
    i32.add
    local.set 6
    local.get 6
    global.set $__stack_pointer
    return)
  (func $fmt.format__anon_2519 (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 5
    local.get 4
    local.get 5
    i32.store
    local.get 4
    i32.load
    local.set 6
    local.get 4
    local.get 6
    i32.store offset=8
    i32.const 1
    local.set 7
    i32.const 1
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        local.get 9
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 10
      i32.const 12
      local.set 11
      local.get 10
      local.get 11
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    i32.const 8
    local.set 12
    local.get 4
    local.get 12
    i32.add
    local.set 13
    local.get 13
    local.set 14
    i32.const 1048576
    local.set 15
    i32.const 12
    local.set 16
    local.get 14
    local.get 15
    local.get 16
    call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeAll
    local.set 17
    i32.const 0
    local.set 18
    i32.const 65535
    local.set 19
    local.get 17
    local.get 19
    i32.and
    local.set 20
    i32.const 65535
    local.set 21
    local.get 18
    local.get 21
    i32.and
    local.set 22
    local.get 20
    local.get 22
    i32.ne
    local.set 23
    i32.const 1
    local.set 24
    local.get 23
    local.get 24
    i32.and
    local.set 25
    block  ;; label = @1
      local.get 25
      i32.eqz
      br_if 0 (;@1;)
      i32.const 32
      local.set 26
      local.get 4
      local.get 26
      i32.add
      local.set 27
      local.get 27
      global.set $__stack_pointer
      local.get 17
      return
    end
    i32.const 0
    local.set 28
    local.get 4
    local.get 28
    i32.store offset=12
    local.get 1
    i32.load
    local.set 29
    i32.const 1049280
    local.set 30
    i32.const 3
    local.set 31
    local.get 29
    local.get 30
    local.get 0
    local.get 31
    call $fmt.formatType__anon_2553
    local.set 32
    i32.const 0
    local.set 33
    i32.const 65535
    local.set 34
    local.get 32
    local.get 34
    i32.and
    local.set 35
    i32.const 65535
    local.set 36
    local.get 33
    local.get 36
    i32.and
    local.set 37
    local.get 35
    local.get 37
    i32.ne
    local.set 38
    i32.const 1
    local.set 39
    local.get 38
    local.get 39
    i32.and
    local.set 40
    block  ;; label = @1
      local.get 40
      i32.eqz
      br_if 0 (;@1;)
      i32.const 32
      local.set 41
      local.get 4
      local.get 41
      i32.add
      local.set 42
      local.get 42
      global.set $__stack_pointer
      local.get 32
      return
    end
    local.get 0
    i32.load
    local.set 43
    local.get 4
    local.get 43
    i32.store offset=16
    local.get 4
    i32.load offset=16
    local.set 44
    local.get 4
    local.get 44
    i32.store offset=24
    i32.const 1
    local.set 45
    i32.const 1
    local.set 46
    local.get 45
    local.get 46
    i32.and
    local.set 47
    block  ;; label = @1
      block  ;; label = @2
        local.get 47
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 15
      local.set 48
      i32.const 41
      local.set 49
      local.get 48
      local.get 49
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    i32.const 24
    local.set 50
    local.get 4
    local.get 50
    i32.add
    local.set 51
    local.get 51
    local.set 52
    i32.const 1048576
    local.set 53
    i32.const 15
    local.set 54
    local.get 53
    local.get 54
    i32.add
    local.set 55
    i32.const 26
    local.set 56
    local.get 52
    local.get 55
    local.get 56
    call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeAll
    local.set 57
    i32.const 0
    local.set 58
    i32.const 65535
    local.set 59
    local.get 57
    local.get 59
    i32.and
    local.set 60
    i32.const 65535
    local.set 61
    local.get 58
    local.get 61
    i32.and
    local.set 62
    local.get 60
    local.get 62
    i32.ne
    local.set 63
    i32.const 1
    local.set 64
    local.get 63
    local.get 64
    i32.and
    local.set 65
    block  ;; label = @1
      local.get 65
      i32.eqz
      br_if 0 (;@1;)
      i32.const 32
      local.set 66
      local.get 4
      local.get 66
      i32.add
      local.set 67
      local.get 67
      global.set $__stack_pointer
      local.get 57
      return
    end
    i32.const 1
    local.set 68
    local.get 4
    local.get 68
    i32.store offset=28
    local.get 1
    i32.load offset=4
    local.set 69
    i32.const 1049300
    local.set 70
    i32.const 3
    local.set 71
    local.get 69
    local.get 70
    local.get 0
    local.get 71
    call $fmt.formatType__anon_2553
    local.set 72
    i32.const 0
    local.set 73
    i32.const 65535
    local.set 74
    local.get 72
    local.get 74
    i32.and
    local.set 75
    i32.const 65535
    local.set 76
    local.get 73
    local.get 76
    i32.and
    local.set 77
    local.get 75
    local.get 77
    i32.ne
    local.set 78
    i32.const 1
    local.set 79
    local.get 78
    local.get 79
    i32.and
    local.set 80
    block  ;; label = @1
      local.get 80
      i32.eqz
      br_if 0 (;@1;)
      i32.const 32
      local.set 81
      local.get 4
      local.get 81
      i32.add
      local.set 82
      local.get 82
      global.set $__stack_pointer
      local.get 72
      return
    end
    i32.const 0
    local.set 83
    i32.const 32
    local.set 84
    local.get 4
    local.get 84
    i32.add
    local.set 85
    local.get 85
    global.set $__stack_pointer
    local.get 83
    return)
  (func $io.fixed_buffer_stream.FixedBufferStream___u8_.getWritten (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    i32.const 8
    local.set 5
    local.get 1
    local.get 5
    i32.add
    local.set 6
    local.get 6
    i32.load
    local.set 7
    local.get 4
    local.get 5
    i32.add
    local.set 8
    local.get 8
    local.get 7
    i32.store
    local.get 1
    i64.load align=4
    local.set 9
    local.get 4
    local.get 9
    i64.store
    local.get 6
    i32.load
    local.set 10
    local.get 4
    i32.load offset=4
    local.set 11
    local.get 4
    i32.load
    local.set 12
    i32.const 0
    local.set 13
    local.get 13
    local.set 14
    local.get 10
    local.set 15
    local.get 14
    local.get 15
    i32.le_u
    local.set 16
    i32.const 1
    local.set 17
    local.get 16
    local.get 17
    i32.and
    local.set 18
    block  ;; label = @1
      block  ;; label = @2
        local.get 18
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 19
      local.get 19
      local.get 10
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    local.get 10
    local.set 20
    local.get 11
    local.set 21
    local.get 20
    local.get 21
    i32.le_u
    local.set 22
    i32.const 1
    local.set 23
    local.get 22
    local.get 23
    i32.and
    local.set 24
    block  ;; label = @1
      block  ;; label = @2
        local.get 24
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 10
      local.get 11
      call $builtin.panicOutOfBounds
      unreachable
    end
    i32.const 0
    local.set 25
    local.get 25
    local.set 26
    local.get 10
    local.set 27
    local.get 26
    local.get 27
    i32.le_u
    local.set 28
    i32.const 1
    local.set 29
    local.get 28
    local.get 29
    i32.and
    local.set 30
    block  ;; label = @1
      block  ;; label = @2
        local.get 30
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 31
      local.get 31
      local.get 10
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 0
    local.get 10
    i32.store offset=4
    local.get 0
    local.get 12
    i32.store
    i32.const 16
    local.set 32
    local.get 4
    local.get 32
    i32.add
    local.set 33
    local.get 33
    global.set $__stack_pointer
    return)
  (func $fmt.format__anon_2561 (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 5
    local.get 4
    local.get 5
    i32.store
    local.get 4
    i32.load
    local.set 6
    local.get 4
    local.get 6
    i32.store offset=8
    i32.const 1
    local.set 7
    i32.const 1
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        local.get 9
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 10
      i32.const 18
      local.set 11
      local.get 10
      local.get 11
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    i32.const 8
    local.set 12
    local.get 4
    local.get 12
    i32.add
    local.set 13
    local.get 13
    local.set 14
    i32.const 1048888
    local.set 15
    i32.const 18
    local.set 16
    local.get 14
    local.get 15
    local.get 16
    call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeAll
    local.set 17
    i32.const 0
    local.set 18
    i32.const 65535
    local.set 19
    local.get 17
    local.get 19
    i32.and
    local.set 20
    i32.const 65535
    local.set 21
    local.get 18
    local.get 21
    i32.and
    local.set 22
    local.get 20
    local.get 22
    i32.ne
    local.set 23
    i32.const 1
    local.set 24
    local.get 23
    local.get 24
    i32.and
    local.set 25
    block  ;; label = @1
      local.get 25
      i32.eqz
      br_if 0 (;@1;)
      i32.const 32
      local.set 26
      local.get 4
      local.get 26
      i32.add
      local.set 27
      local.get 27
      global.set $__stack_pointer
      local.get 17
      return
    end
    i32.const 0
    local.set 28
    local.get 4
    local.get 28
    i32.store offset=12
    local.get 1
    i32.load16_u
    local.set 29
    i32.const 1049464
    local.set 30
    i32.const 3
    local.set 31
    local.get 29
    local.get 30
    local.get 0
    local.get 31
    call $fmt.formatType__anon_2573
    local.set 32
    i32.const 0
    local.set 33
    i32.const 65535
    local.set 34
    local.get 32
    local.get 34
    i32.and
    local.set 35
    i32.const 65535
    local.set 36
    local.get 33
    local.get 36
    i32.and
    local.set 37
    local.get 35
    local.get 37
    i32.ne
    local.set 38
    i32.const 1
    local.set 39
    local.get 38
    local.get 39
    i32.and
    local.set 40
    block  ;; label = @1
      local.get 40
      i32.eqz
      br_if 0 (;@1;)
      i32.const 32
      local.set 41
      local.get 4
      local.get 41
      i32.add
      local.set 42
      local.get 42
      global.set $__stack_pointer
      local.get 32
      return
    end
    local.get 0
    i32.load
    local.set 43
    local.get 4
    local.get 43
    i32.store offset=16
    local.get 4
    i32.load offset=16
    local.set 44
    local.get 4
    local.get 44
    i32.store offset=24
    i32.const 1
    local.set 45
    i32.const 1
    local.set 46
    local.get 45
    local.get 46
    i32.and
    local.set 47
    block  ;; label = @1
      block  ;; label = @2
        local.get 47
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 21
      local.set 48
      i32.const 22
      local.set 49
      local.get 48
      local.get 49
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    i32.const 24
    local.set 50
    local.get 4
    local.get 50
    i32.add
    local.set 51
    local.get 51
    local.set 52
    i32.const 1048888
    local.set 53
    i32.const 21
    local.set 54
    local.get 53
    local.get 54
    i32.add
    local.set 55
    i32.const 1
    local.set 56
    local.get 52
    local.get 55
    local.get 56
    call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeAll
    local.set 57
    i32.const 0
    local.set 58
    i32.const 65535
    local.set 59
    local.get 57
    local.get 59
    i32.and
    local.set 60
    i32.const 65535
    local.set 61
    local.get 58
    local.get 61
    i32.and
    local.set 62
    local.get 60
    local.get 62
    i32.ne
    local.set 63
    i32.const 1
    local.set 64
    local.get 63
    local.get 64
    i32.and
    local.set 65
    block  ;; label = @1
      local.get 65
      i32.eqz
      br_if 0 (;@1;)
      i32.const 32
      local.set 66
      local.get 4
      local.get 66
      i32.add
      local.set 67
      local.get 67
      global.set $__stack_pointer
      local.get 57
      return
    end
    i32.const 0
    local.set 68
    i32.const 32
    local.set 69
    local.get 4
    local.get 69
    i32.add
    local.set 70
    local.get 70
    global.set $__stack_pointer
    local.get 68
    return)
  (func $fmt.format__anon_2580 (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 4
    local.get 3
    local.get 4
    i32.store
    local.get 3
    i32.load
    local.set 5
    local.get 3
    local.get 5
    i32.store offset=8
    i32.const 1
    local.set 6
    i32.const 1
    local.set 7
    local.get 6
    local.get 7
    i32.and
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 9
      i32.const 53
      local.set 10
      local.get 9
      local.get 10
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    i32.const 8
    local.set 11
    local.get 3
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.set 13
    i32.const 1048911
    local.set 14
    i32.const 53
    local.set 15
    local.get 13
    local.get 14
    local.get 15
    call $io.writer.Writer_fs.file.File_error_AccessDenied_BrokenPipe_ConnectionResetByPeer_DiskQuota_FileTooBig_InputOutput_LockViolation_NoSpaceLeft_NotOpenForWriting_OperationAborted_SystemResources_Unexpected_WouldBlock___function_'write'__.writeAll
    local.set 16
    i32.const 0
    local.set 17
    i32.const 65535
    local.set 18
    local.get 16
    local.get 18
    i32.and
    local.set 19
    i32.const 65535
    local.set 20
    local.get 17
    local.get 20
    i32.and
    local.set 21
    local.get 19
    local.get 21
    i32.ne
    local.set 22
    i32.const 1
    local.set 23
    local.get 22
    local.get 23
    i32.and
    local.set 24
    block  ;; label = @1
      local.get 24
      i32.eqz
      br_if 0 (;@1;)
      i32.const 16
      local.set 25
      local.get 3
      local.get 25
      i32.add
      local.set 26
      local.get 26
      global.set $__stack_pointer
      local.get 16
      return
    end
    i32.const 0
    local.set 27
    i32.const 16
    local.set 28
    local.get 3
    local.get 28
    i32.add
    local.set 29
    local.get 29
    global.set $__stack_pointer
    local.get 27
    return)
  (func $fmt.format__anon_2588 (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 5
    local.get 4
    local.get 5
    i32.store
    local.get 4
    i32.load
    local.set 6
    local.get 4
    local.get 6
    i32.store offset=8
    i32.const 1
    local.set 7
    i32.const 1
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        local.get 9
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 10
      i32.const 27
      local.set 11
      local.get 10
      local.get 11
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    i32.const 8
    local.set 12
    local.get 4
    local.get 12
    i32.add
    local.set 13
    local.get 13
    local.set 14
    i32.const 1048621
    local.set 15
    i32.const 27
    local.set 16
    local.get 14
    local.get 15
    local.get 16
    call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeAll
    local.set 17
    i32.const 0
    local.set 18
    i32.const 65535
    local.set 19
    local.get 17
    local.get 19
    i32.and
    local.set 20
    i32.const 65535
    local.set 21
    local.get 18
    local.get 21
    i32.and
    local.set 22
    local.get 20
    local.get 22
    i32.ne
    local.set 23
    i32.const 1
    local.set 24
    local.get 23
    local.get 24
    i32.and
    local.set 25
    block  ;; label = @1
      local.get 25
      i32.eqz
      br_if 0 (;@1;)
      i32.const 32
      local.set 26
      local.get 4
      local.get 26
      i32.add
      local.set 27
      local.get 27
      global.set $__stack_pointer
      local.get 17
      return
    end
    i32.const 0
    local.set 28
    local.get 4
    local.get 28
    i32.store offset=12
    local.get 1
    i32.load
    local.set 29
    i32.const 1049484
    local.set 30
    i32.const 3
    local.set 31
    local.get 29
    local.get 30
    local.get 0
    local.get 31
    call $fmt.formatType__anon_2553
    local.set 32
    i32.const 0
    local.set 33
    i32.const 65535
    local.set 34
    local.get 32
    local.get 34
    i32.and
    local.set 35
    i32.const 65535
    local.set 36
    local.get 33
    local.get 36
    i32.and
    local.set 37
    local.get 35
    local.get 37
    i32.ne
    local.set 38
    i32.const 1
    local.set 39
    local.get 38
    local.get 39
    i32.and
    local.set 40
    block  ;; label = @1
      local.get 40
      i32.eqz
      br_if 0 (;@1;)
      i32.const 32
      local.set 41
      local.get 4
      local.get 41
      i32.add
      local.set 42
      local.get 42
      global.set $__stack_pointer
      local.get 32
      return
    end
    local.get 0
    i32.load
    local.set 43
    local.get 4
    local.get 43
    i32.store offset=16
    local.get 4
    i32.load offset=16
    local.set 44
    local.get 4
    local.get 44
    i32.store offset=24
    i32.const 1
    local.set 45
    i32.const 1
    local.set 46
    local.get 45
    local.get 46
    i32.and
    local.set 47
    block  ;; label = @1
      block  ;; label = @2
        local.get 47
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 30
      local.set 48
      i32.const 36
      local.set 49
      local.get 48
      local.get 49
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    i32.const 24
    local.set 50
    local.get 4
    local.get 50
    i32.add
    local.set 51
    local.get 51
    local.set 52
    i32.const 1048621
    local.set 53
    i32.const 30
    local.set 54
    local.get 53
    local.get 54
    i32.add
    local.set 55
    i32.const 6
    local.set 56
    local.get 52
    local.get 55
    local.get 56
    call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeAll
    local.set 57
    i32.const 0
    local.set 58
    i32.const 65535
    local.set 59
    local.get 57
    local.get 59
    i32.and
    local.set 60
    i32.const 65535
    local.set 61
    local.get 58
    local.get 61
    i32.and
    local.set 62
    local.get 60
    local.get 62
    i32.ne
    local.set 63
    i32.const 1
    local.set 64
    local.get 63
    local.get 64
    i32.and
    local.set 65
    block  ;; label = @1
      local.get 65
      i32.eqz
      br_if 0 (;@1;)
      i32.const 32
      local.set 66
      local.get 4
      local.get 66
      i32.add
      local.set 67
      local.get 67
      global.set $__stack_pointer
      local.get 57
      return
    end
    i32.const 1
    local.set 68
    local.get 4
    local.get 68
    i32.store offset=28
    local.get 1
    i32.load offset=4
    local.set 69
    i32.const 1049504
    local.set 70
    i32.const 3
    local.set 71
    local.get 69
    local.get 70
    local.get 0
    local.get 71
    call $fmt.formatType__anon_2553
    local.set 72
    i32.const 0
    local.set 73
    i32.const 65535
    local.set 74
    local.get 72
    local.get 74
    i32.and
    local.set 75
    i32.const 65535
    local.set 76
    local.get 73
    local.get 76
    i32.and
    local.set 77
    local.get 75
    local.get 77
    i32.ne
    local.set 78
    i32.const 1
    local.set 79
    local.get 78
    local.get 79
    i32.and
    local.set 80
    block  ;; label = @1
      local.get 80
      i32.eqz
      br_if 0 (;@1;)
      i32.const 32
      local.set 81
      local.get 4
      local.get 81
      i32.add
      local.set 82
      local.get 82
      global.set $__stack_pointer
      local.get 72
      return
    end
    i32.const 0
    local.set 83
    i32.const 32
    local.set 84
    local.get 4
    local.get 84
    i32.add
    local.set 85
    local.get 85
    global.set $__stack_pointer
    local.get 83
    return)
  (func $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeAll (type 8) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 64
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 2
    local.set 6
    local.get 1
    local.set 7
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    i32.const 0
    local.set 8
    local.get 5
    local.get 8
    i32.store offset=20
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=20
        local.set 9
        local.get 9
        local.set 10
        local.get 6
        local.set 11
        local.get 10
        local.get 11
        i32.ne
        local.set 12
        i32.const 1
        local.set 13
        local.get 12
        local.get 13
        i32.and
        local.set 14
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 14
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                i32.load offset=20
                local.set 15
                local.get 0
                i32.load
                local.set 16
                local.get 5
                local.get 16
                i32.store offset=24
                local.get 5
                i32.load offset=24
                local.set 17
                local.get 5
                local.get 17
                i32.store offset=32
                local.get 5
                local.get 6
                i32.store offset=44
                local.get 5
                local.get 7
                i32.store offset=40
                local.get 5
                i32.load offset=20
                local.set 18
                local.get 5
                i32.load offset=44
                local.set 19
                local.get 5
                i32.load offset=40
                local.set 20
                local.get 20
                local.get 18
                i32.add
                local.set 21
                local.get 18
                local.set 22
                local.get 19
                local.set 23
                local.get 22
                local.get 23
                i32.le_u
                local.set 24
                i32.const 1
                local.set 25
                local.get 24
                local.get 25
                i32.and
                local.set 26
                local.get 26
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              br 4 (;@1;)
            end
            br 1 (;@3;)
          end
          local.get 18
          local.get 19
          call $builtin.panicStartGreaterThanEnd
          unreachable
        end
        local.get 19
        local.get 18
        i32.sub
        local.set 27
        local.get 19
        local.set 28
        local.get 19
        local.set 29
        local.get 28
        local.get 29
        i32.le_u
        local.set 30
        i32.const 1
        local.set 31
        local.get 30
        local.get 31
        i32.and
        local.set 32
        block  ;; label = @3
          block  ;; label = @4
            local.get 32
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          local.get 19
          local.get 19
          call $builtin.panicOutOfBounds
          unreachable
        end
        local.get 18
        local.set 33
        local.get 19
        local.set 34
        local.get 33
        local.get 34
        i32.le_u
        local.set 35
        i32.const 1
        local.set 36
        local.get 35
        local.get 36
        i32.and
        local.set 37
        block  ;; label = @3
          block  ;; label = @4
            local.get 37
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          local.get 18
          local.get 19
          call $builtin.panicOutOfBounds
          unreachable
        end
        local.get 27
        local.set 38
        local.get 21
        local.set 39
        i32.const 48
        local.set 40
        local.get 5
        local.get 40
        i32.add
        local.set 41
        local.get 41
        local.set 42
        i32.const 32
        local.set 43
        local.get 5
        local.get 43
        i32.add
        local.set 44
        local.get 44
        local.set 45
        local.get 42
        local.get 45
        local.get 39
        local.get 38
        call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.write
        local.get 5
        i32.load16_u offset=52
        local.set 46
        i32.const 0
        local.set 47
        i32.const 65535
        local.set 48
        local.get 46
        local.get 48
        i32.and
        local.set 49
        i32.const 65535
        local.set 50
        local.get 47
        local.get 50
        i32.and
        local.set 51
        local.get 49
        local.get 51
        i32.ne
        local.set 52
        i32.const 1
        local.set 53
        local.get 52
        local.get 53
        i32.and
        local.set 54
        block  ;; label = @3
          local.get 54
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load16_u offset=52
          local.set 55
          i32.const 64
          local.set 56
          local.get 5
          local.get 56
          i32.add
          local.set 57
          local.get 57
          global.set $__stack_pointer
          local.get 55
          return
        end
        local.get 5
        i32.load offset=48
        local.set 58
        local.get 15
        local.get 58
        i32.add
        local.set 59
        local.get 59
        local.get 15
        i32.lt_u
        local.set 60
        local.get 5
        local.get 59
        i32.store offset=56
        i32.const 1
        local.set 61
        local.get 60
        local.get 61
        i32.and
        local.set 62
        local.get 5
        local.get 62
        i32.store8 offset=60
        local.get 5
        i32.load8_u offset=60
        local.set 63
        i32.const 0
        local.set 64
        i32.const 1
        local.set 65
        local.get 63
        local.get 65
        i32.and
        local.set 66
        i32.const 1
        local.set 67
        local.get 64
        local.get 67
        i32.and
        local.set 68
        local.get 66
        local.get 68
        i32.eq
        local.set 69
        i32.const 1
        local.set 70
        local.get 69
        local.get 70
        i32.and
        local.set 71
        block  ;; label = @3
          block  ;; label = @4
            local.get 71
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 1048669
          local.set 72
          i32.const 16
          local.set 73
          i32.const 0
          local.set 74
          i32.const 1049572
          local.set 75
          local.get 72
          local.get 73
          local.get 74
          local.get 75
          call $builtin.default_panic
          unreachable
        end
        local.get 5
        i32.load offset=56
        local.set 76
        local.get 5
        local.get 76
        i32.store offset=20
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 77
    i32.const 64
    local.set 78
    local.get 5
    local.get 78
    i32.add
    local.set 79
    local.get 79
    global.set $__stack_pointer
    local.get 77
    return)
  (func $fmt.formatType__anon_2553 (type 1) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 32
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=8
    local.get 6
    local.get 3
    i32.store offset=12
    i32.const 1
    local.set 7
    local.get 6
    local.get 7
    i32.store offset=20
    i32.const 1049276
    local.set 8
    local.get 6
    local.get 8
    i32.store offset=16
    local.get 0
    local.get 1
    local.get 2
    call $fmt.formatValue__anon_2610
    local.set 9
    local.get 6
    local.get 9
    i32.store16 offset=30
    local.get 6
    i32.load16_u offset=30
    local.set 10
    i32.const 32
    local.set 11
    local.get 6
    local.get 11
    i32.add
    local.set 12
    local.get 12
    global.set $__stack_pointer
    local.get 10
    return)
  (func $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.write (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 16
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 3
    local.set 7
    local.get 2
    local.set 8
    local.get 6
    local.get 3
    i32.store offset=4
    local.get 6
    local.get 2
    i32.store
    local.get 1
    i32.load
    local.set 9
    i32.const 8
    local.set 10
    local.get 6
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.set 12
    local.get 12
    local.get 9
    local.get 8
    local.get 7
    call $io.fixed_buffer_stream.FixedBufferStream___u8_.write
    local.get 6
    i64.load offset=8
    local.set 13
    local.get 0
    local.get 13
    i64.store align=4
    i32.const 16
    local.set 14
    local.get 6
    local.get 14
    i32.add
    local.set 15
    local.get 15
    global.set $__stack_pointer
    return)
  (func $fmt.formatValue__anon_2610 (type 8) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 0
    local.get 1
    local.get 2
    call $fmt.formatIntValue__anon_2614
    local.set 6
    local.get 5
    local.get 6
    i32.store16 offset=14
    local.get 5
    i32.load16_u offset=14
    local.set 7
    i32.const 16
    local.set 8
    local.get 5
    local.get 8
    i32.add
    local.set 9
    local.get 9
    global.set $__stack_pointer
    local.get 7
    return)
  (func $mem.span__anon_2607 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 32
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 1
    local.get 2
    call $mem.len__anon_2638
    local.set 6
    local.get 5
    local.get 6
    i32.store offset=20
    local.get 5
    local.get 2
    i32.store offset=28
    local.get 5
    local.get 1
    i32.store offset=24
    local.get 5
    i32.load offset=28
    local.set 7
    local.get 5
    i32.load offset=24
    local.set 8
    i32.const 0
    local.set 9
    local.get 9
    local.set 10
    local.get 6
    local.set 11
    local.get 10
    local.get 11
    i32.le_u
    local.set 12
    i32.const 1
    local.set 13
    local.get 12
    local.get 13
    i32.and
    local.set 14
    block  ;; label = @1
      block  ;; label = @2
        local.get 14
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 15
      local.get 15
      local.get 6
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    local.get 6
    local.set 16
    local.get 7
    local.set 17
    local.get 16
    local.get 17
    i32.le_u
    local.set 18
    i32.const 1
    local.set 19
    local.get 18
    local.get 19
    i32.and
    local.set 20
    block  ;; label = @1
      block  ;; label = @2
        local.get 20
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 6
      local.get 7
      call $builtin.panicOutOfBounds
      unreachable
    end
    i32.const 0
    local.set 21
    local.get 21
    local.set 22
    local.get 6
    local.set 23
    local.get 22
    local.get 23
    i32.le_u
    local.set 24
    i32.const 1
    local.set 25
    local.get 24
    local.get 25
    i32.and
    local.set 26
    block  ;; label = @1
      block  ;; label = @2
        local.get 26
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 27
      local.get 27
      local.get 6
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 0
    local.get 6
    i32.store offset=4
    local.get 0
    local.get 8
    i32.store
    i32.const 32
    local.set 28
    local.get 5
    local.get 28
    i32.add
    local.set 29
    local.get 29
    global.set $__stack_pointer
    return)
  (func $fmt.formatType__anon_2573 (type 1) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 32
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store16 offset=10
    local.get 6
    local.get 3
    i32.store offset=12
    i32.const 1
    local.set 7
    local.get 6
    local.get 7
    i32.store offset=20
    i32.const 1049276
    local.set 8
    local.get 6
    local.get 8
    i32.store offset=16
    local.get 0
    local.get 1
    local.get 2
    call $fmt.formatValue__anon_2627
    local.set 9
    local.get 6
    local.get 9
    i32.store16 offset=30
    local.get 6
    i32.load16_u offset=30
    local.set 10
    i32.const 32
    local.set 11
    local.get 6
    local.get 11
    i32.add
    local.set 12
    local.get 12
    global.set $__stack_pointer
    local.get 10
    return)
  (func $fmt.formatValue__anon_2627 (type 8) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store16 offset=12
    local.get 0
    local.get 1
    local.get 2
    call $fmt.formatIntValue__anon_2628
    local.set 6
    local.get 5
    local.get 6
    i32.store16 offset=14
    local.get 5
    i32.load16_u offset=14
    local.set 7
    i32.const 16
    local.set 8
    local.get 5
    local.get 8
    i32.add
    local.set 9
    local.get 9
    global.set $__stack_pointer
    local.get 7
    return)
  (func $mem.len__anon_2638 (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 1
    local.set 5
    local.get 0
    drop
    local.get 4
    local.get 1
    i32.store offset=4
    local.get 4
    local.get 0
    i32.store
    local.get 4
    local.get 5
    i32.store offset=12
    local.get 4
    i32.load offset=12
    local.set 6
    i32.const 16
    local.set 7
    local.get 4
    local.get 7
    i32.add
    local.set 8
    local.get 8
    global.set $__stack_pointer
    local.get 6
    return)
  (func $io.fixed_buffer_stream.FixedBufferStream___u8_.write (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 80
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 3
    local.set 7
    local.get 2
    local.set 8
    local.get 6
    local.get 1
    i32.store offset=4
    local.get 6
    local.get 3
    i32.store offset=12
    local.get 6
    local.get 2
    i32.store offset=8
    block  ;; label = @1
      local.get 7
      br_if 0 (;@1;)
      i64.const 0
      local.set 9
      local.get 0
      local.get 9
      i64.store align=4
      i32.const 80
      local.set 10
      local.get 6
      local.get 10
      i32.add
      local.set 11
      local.get 11
      global.set $__stack_pointer
      return
    end
    local.get 1
    i32.load offset=8
    local.set 12
    local.get 1
    i32.load offset=4
    local.set 13
    local.get 1
    i32.load
    drop
    local.get 12
    local.set 14
    local.get 13
    local.set 15
    local.get 14
    local.get 15
    i32.ge_u
    local.set 16
    i32.const 1
    local.set 17
    local.get 16
    local.get 17
    i32.and
    local.set 18
    block  ;; label = @1
      local.get 18
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 19
      local.get 19
      i64.load offset=1049524 align=4
      local.set 20
      local.get 0
      local.get 20
      i64.store align=4
      i32.const 80
      local.set 21
      local.get 6
      local.get 21
      i32.add
      local.set 22
      local.get 22
      global.set $__stack_pointer
      return
    end
    local.get 1
    i32.load offset=8
    local.set 23
    local.get 23
    local.get 7
    i32.add
    local.set 24
    local.get 24
    local.get 23
    i32.lt_u
    local.set 25
    local.get 6
    local.get 24
    i32.store offset=16
    i32.const 1
    local.set 26
    local.get 25
    local.get 26
    i32.and
    local.set 27
    local.get 6
    local.get 27
    i32.store8 offset=20
    local.get 6
    i32.load8_u offset=20
    local.set 28
    i32.const 0
    local.set 29
    i32.const 1
    local.set 30
    local.get 28
    local.get 30
    i32.and
    local.set 31
    i32.const 1
    local.set 32
    local.get 29
    local.get 32
    i32.and
    local.set 33
    local.get 31
    local.get 33
    i32.eq
    local.set 34
    i32.const 1
    local.set 35
    local.get 34
    local.get 35
    i32.and
    local.set 36
    block  ;; label = @1
      block  ;; label = @2
        local.get 36
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1048669
      local.set 37
      i32.const 16
      local.set 38
      i32.const 0
      local.set 39
      i32.const 1049532
      local.set 40
      local.get 37
      local.get 38
      local.get 39
      local.get 40
      call $builtin.default_panic
      unreachable
    end
    local.get 6
    i32.load offset=16
    local.set 41
    local.get 1
    i32.load offset=4
    local.set 42
    local.get 1
    i32.load
    drop
    local.get 41
    local.set 43
    local.get 42
    local.set 44
    local.get 43
    local.get 44
    i32.le_u
    local.set 45
    i32.const 1
    local.set 46
    local.get 45
    local.get 46
    i32.and
    local.set 47
    block  ;; label = @1
      block  ;; label = @2
        local.get 47
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        local.set 48
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=4
      local.set 49
      local.get 1
      i32.load
      drop
      local.get 1
      i32.load offset=8
      local.set 50
      local.get 49
      local.get 50
      i32.sub
      local.set 51
      local.get 51
      local.get 49
      i32.gt_u
      local.set 52
      local.get 6
      local.get 51
      i32.store offset=24
      i32.const 1
      local.set 53
      local.get 52
      local.get 53
      i32.and
      local.set 54
      local.get 6
      local.get 54
      i32.store8 offset=28
      local.get 6
      i32.load8_u offset=28
      local.set 55
      i32.const 0
      local.set 56
      i32.const 1
      local.set 57
      local.get 55
      local.get 57
      i32.and
      local.set 58
      i32.const 1
      local.set 59
      local.get 56
      local.get 59
      i32.and
      local.set 60
      local.get 58
      local.get 60
      i32.eq
      local.set 61
      i32.const 1
      local.set 62
      local.get 61
      local.get 62
      i32.and
      local.set 63
      block  ;; label = @2
        block  ;; label = @3
          local.get 63
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 1048669
        local.set 64
        i32.const 16
        local.set 65
        i32.const 0
        local.set 66
        i32.const 1049540
        local.set 67
        local.get 64
        local.get 65
        local.get 66
        local.get 67
        call $builtin.default_panic
        unreachable
      end
      local.get 6
      i32.load offset=24
      local.set 68
      local.get 68
      local.set 48
    end
    local.get 48
    local.set 69
    local.get 6
    local.get 69
    i32.store offset=32
    local.get 6
    local.get 1
    i32.store offset=36
    local.get 6
    i32.load offset=36
    local.set 70
    local.get 1
    i32.load offset=8
    local.set 71
    local.get 1
    i32.load offset=8
    local.set 72
    local.get 72
    local.get 69
    i32.add
    local.set 73
    local.get 73
    local.get 72
    i32.lt_u
    local.set 74
    local.get 6
    local.get 73
    i32.store offset=40
    i32.const 1
    local.set 75
    local.get 74
    local.get 75
    i32.and
    local.set 76
    local.get 6
    local.get 76
    i32.store8 offset=44
    local.get 6
    i32.load8_u offset=44
    local.set 77
    i32.const 0
    local.set 78
    i32.const 1
    local.set 79
    local.get 77
    local.get 79
    i32.and
    local.set 80
    i32.const 1
    local.set 81
    local.get 78
    local.get 81
    i32.and
    local.set 82
    local.get 80
    local.get 82
    i32.eq
    local.set 83
    i32.const 1
    local.set 84
    local.get 83
    local.get 84
    i32.and
    local.set 85
    block  ;; label = @1
      block  ;; label = @2
        local.get 85
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1048669
      local.set 86
      i32.const 16
      local.set 87
      i32.const 0
      local.set 88
      i32.const 1049548
      local.set 89
      local.get 86
      local.get 87
      local.get 88
      local.get 89
      call $builtin.default_panic
      unreachable
    end
    local.get 6
    i32.load offset=40
    local.set 90
    local.get 70
    i32.load offset=4
    local.set 91
    local.get 70
    i32.load
    local.set 92
    local.get 92
    local.get 71
    i32.add
    local.set 93
    local.get 71
    local.set 94
    local.get 90
    local.set 95
    local.get 94
    local.get 95
    i32.le_u
    local.set 96
    i32.const 1
    local.set 97
    local.get 96
    local.get 97
    i32.and
    local.set 98
    block  ;; label = @1
      block  ;; label = @2
        local.get 98
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 71
      local.get 90
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    local.get 90
    local.get 71
    i32.sub
    local.set 99
    local.get 90
    local.set 100
    local.get 91
    local.set 101
    local.get 100
    local.get 101
    i32.le_u
    local.set 102
    i32.const 1
    local.set 103
    local.get 102
    local.get 103
    i32.and
    local.set 104
    block  ;; label = @1
      block  ;; label = @2
        local.get 104
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 90
      local.get 91
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 71
    local.set 105
    local.get 90
    local.set 106
    local.get 105
    local.get 106
    i32.le_u
    local.set 107
    i32.const 1
    local.set 108
    local.get 107
    local.get 108
    i32.and
    local.set 109
    block  ;; label = @1
      block  ;; label = @2
        local.get 109
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 71
      local.get 90
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 99
    local.set 110
    local.get 93
    local.set 111
    local.get 6
    local.get 8
    i32.store offset=48
    local.get 6
    local.get 7
    i32.store offset=52
    local.get 6
    i32.load offset=52
    local.set 112
    local.get 6
    i32.load offset=48
    local.set 113
    i32.const 0
    local.set 114
    local.get 114
    local.set 115
    local.get 69
    local.set 116
    local.get 115
    local.get 116
    i32.le_u
    local.set 117
    i32.const 1
    local.set 118
    local.get 117
    local.get 118
    i32.and
    local.set 119
    block  ;; label = @1
      block  ;; label = @2
        local.get 119
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 120
      local.get 120
      local.get 69
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    local.get 69
    local.set 121
    local.get 112
    local.set 122
    local.get 121
    local.get 122
    i32.le_u
    local.set 123
    i32.const 1
    local.set 124
    local.get 123
    local.get 124
    i32.and
    local.set 125
    block  ;; label = @1
      block  ;; label = @2
        local.get 125
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 69
      local.get 112
      call $builtin.panicOutOfBounds
      unreachable
    end
    i32.const 0
    local.set 126
    local.get 126
    local.set 127
    local.get 69
    local.set 128
    local.get 127
    local.get 128
    i32.le_u
    local.set 129
    i32.const 1
    local.set 130
    local.get 129
    local.get 130
    i32.and
    local.set 131
    block  ;; label = @1
      block  ;; label = @2
        local.get 131
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 132
      local.get 132
      local.get 69
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 69
    local.set 133
    local.get 113
    local.set 134
    local.get 111
    local.get 110
    local.get 134
    local.get 133
    call $mem.copy__anon_2368
    local.get 6
    local.get 1
    i32.store offset=60
    local.get 6
    i32.load offset=60
    local.set 135
    i32.const 8
    local.set 136
    local.get 135
    local.get 136
    i32.add
    local.set 137
    local.get 135
    i32.load offset=8
    local.set 138
    local.get 138
    local.get 69
    i32.add
    local.set 139
    local.get 139
    local.get 138
    i32.lt_u
    local.set 140
    local.get 6
    local.get 139
    i32.store offset=64
    i32.const 1
    local.set 141
    local.get 140
    local.get 141
    i32.and
    local.set 142
    local.get 6
    local.get 142
    i32.store8 offset=68
    local.get 6
    i32.load8_u offset=68
    local.set 143
    i32.const 0
    local.set 144
    i32.const 1
    local.set 145
    local.get 143
    local.get 145
    i32.and
    local.set 146
    i32.const 1
    local.set 147
    local.get 144
    local.get 147
    i32.and
    local.set 148
    local.get 146
    local.get 148
    i32.eq
    local.set 149
    i32.const 1
    local.set 150
    local.get 149
    local.get 150
    i32.and
    local.set 151
    block  ;; label = @1
      block  ;; label = @2
        local.get 151
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 1048669
      local.set 152
      i32.const 16
      local.set 153
      i32.const 0
      local.set 154
      i32.const 1049556
      local.set 155
      local.get 152
      local.get 153
      local.get 154
      local.get 155
      call $builtin.default_panic
      unreachable
    end
    local.get 6
    i32.load offset=64
    local.set 156
    local.get 137
    local.get 156
    i32.store
    block  ;; label = @1
      local.get 69
      br_if 0 (;@1;)
      i32.const 0
      local.set 157
      local.get 157
      i64.load offset=1049564 align=4
      local.set 158
      local.get 0
      local.get 158
      i64.store align=4
      i32.const 80
      local.set 159
      local.get 6
      local.get 159
      i32.add
      local.set 160
      local.get 160
      global.set $__stack_pointer
      return
    end
    i32.const 0
    local.set 161
    local.get 6
    local.get 161
    i32.store16 offset=76
    local.get 6
    local.get 69
    i32.store offset=72
    local.get 6
    i64.load offset=72
    local.set 162
    local.get 0
    local.get 162
    i64.store align=4
    i32.const 80
    local.set 163
    local.get 6
    local.get 163
    i32.add
    local.set 164
    local.get 164
    global.set $__stack_pointer
    return)
  (func $fmt.formatIntValue__anon_2614 (type 8) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=4
    local.get 5
    local.get 0
    i32.store offset=8
    i32.const 10
    local.set 6
    i32.const 0
    local.set 7
    local.get 0
    local.get 6
    local.get 7
    local.get 1
    local.get 2
    call $fmt.formatInt__anon_2620
    local.set 8
    local.get 5
    local.get 8
    i32.store16 offset=14
    local.get 5
    i32.load16_u offset=14
    local.set 9
    i32.const 16
    local.set 10
    local.get 5
    local.get 10
    i32.add
    local.set 11
    local.get 11
    global.set $__stack_pointer
    local.get 9
    return)
  (func $fmt.formatInt__anon_2620 (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 5
    i32.const 96
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    local.get 7
    global.set $__stack_pointer
    local.get 7
    local.get 0
    i32.store offset=8
    local.get 7
    local.get 1
    i32.store8 offset=14
    i32.const 1
    local.set 8
    local.get 2
    local.get 8
    i32.and
    local.set 9
    local.get 7
    local.get 9
    i32.store8 offset=15
    i32.const 2
    local.set 10
    i32.const 255
    local.set 11
    local.get 1
    local.get 11
    i32.and
    local.set 12
    i32.const 255
    local.set 13
    local.get 10
    local.get 13
    i32.and
    local.set 14
    local.get 12
    local.get 14
    i32.ge_u
    local.set 15
    local.get 15
    call $debug.assert
    local.get 7
    local.get 0
    i32.store offset=16
    local.get 0
    call $math.absCast__anon_2622
    local.set 16
    local.get 7
    local.get 16
    i32.store offset=20
    i32.const 56
    local.set 17
    local.get 7
    local.get 17
    i32.add
    local.set 18
    i32.const -86
    local.set 19
    local.get 18
    local.get 19
    i32.store8
    i32.const 48
    local.set 20
    local.get 7
    local.get 20
    i32.add
    local.set 21
    i64.const -6148914691236517206
    local.set 22
    local.get 21
    local.get 22
    i64.store
    i32.const 40
    local.set 23
    local.get 7
    local.get 23
    i32.add
    local.set 24
    local.get 24
    local.get 22
    i64.store
    i32.const 32
    local.set 25
    local.get 7
    local.get 25
    i32.add
    local.set 26
    local.get 26
    local.get 22
    i64.store
    local.get 7
    local.get 22
    i64.store offset=24
    local.get 7
    local.get 16
    i32.store offset=60
    i32.const 33
    local.set 27
    local.get 7
    local.get 27
    i32.store offset=64
    loop  ;; label = @1
      local.get 7
      i32.load offset=60
      local.set 28
      i32.const 255
      local.set 29
      local.get 1
      local.get 29
      i32.and
      local.set 30
      block  ;; label = @2
        block  ;; label = @3
          local.get 30
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 1048714
        local.set 31
        i32.const 16
        local.set 32
        i32.const 0
        local.set 33
        i32.const 1049580
        local.set 34
        local.get 31
        local.get 32
        local.get 33
        local.get 34
        call $builtin.default_panic
        unreachable
      end
      local.get 28
      local.get 30
      i32.rem_u
      local.set 35
      local.get 7
      local.get 35
      i32.store offset=68
      local.get 7
      i32.load offset=64
      local.set 36
      i32.const -1
      local.set 37
      local.get 36
      local.get 37
      i32.add
      local.set 38
      local.get 38
      local.get 36
      i32.gt_u
      local.set 39
      local.get 7
      local.get 38
      i32.store offset=72
      i32.const 1
      local.set 40
      local.get 39
      local.get 40
      i32.and
      local.set 41
      local.get 7
      local.get 41
      i32.store8 offset=76
      local.get 7
      i32.load8_u offset=76
      local.set 42
      i32.const 0
      local.set 43
      i32.const 1
      local.set 44
      local.get 42
      local.get 44
      i32.and
      local.set 45
      i32.const 1
      local.set 46
      local.get 43
      local.get 46
      i32.and
      local.set 47
      local.get 45
      local.get 47
      i32.eq
      local.set 48
      i32.const 1
      local.set 49
      local.get 48
      local.get 49
      i32.and
      local.set 50
      block  ;; label = @2
        block  ;; label = @3
          local.get 50
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 1048669
        local.set 51
        i32.const 16
        local.set 52
        i32.const 0
        local.set 53
        i32.const 1049588
        local.set 54
        local.get 51
        local.get 52
        local.get 53
        local.get 54
        call $builtin.default_panic
        unreachable
      end
      local.get 7
      i32.load offset=72
      local.set 55
      local.get 7
      local.get 55
      i32.store offset=64
      local.get 7
      i32.load offset=64
      local.set 56
      i32.const 33
      local.set 57
      local.get 56
      local.set 58
      local.get 57
      local.set 59
      local.get 58
      local.get 59
      i32.lt_u
      local.set 60
      i32.const 1
      local.set 61
      local.get 60
      local.get 61
      i32.and
      local.set 62
      block  ;; label = @2
        block  ;; label = @3
          local.get 62
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 33
        local.set 63
        local.get 56
        local.get 63
        call $builtin.panicOutOfBounds
        unreachable
      end
      i32.const 24
      local.set 64
      local.get 7
      local.get 64
      i32.add
      local.set 65
      local.get 65
      local.set 66
      local.get 66
      local.get 56
      i32.add
      local.set 67
      i32.const 255
      local.set 68
      local.get 68
      local.get 35
      i32.sub
      local.set 69
      i32.const 255
      local.set 70
      local.get 69
      local.set 71
      local.get 70
      local.set 72
      local.get 71
      local.get 72
      i32.le_u
      local.set 73
      i32.const 1
      local.set 74
      local.get 73
      local.get 74
      i32.and
      local.set 75
      block  ;; label = @2
        block  ;; label = @3
          local.get 75
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 1048686
        local.set 76
        i32.const 27
        local.set 77
        i32.const 0
        local.set 78
        i32.const 1049596
        local.set 79
        local.get 76
        local.get 77
        local.get 78
        local.get 79
        call $builtin.default_panic
        unreachable
      end
      local.get 35
      local.get 2
      call $fmt.digitToChar
      local.set 80
      local.get 67
      local.get 80
      i32.store8
      local.get 7
      i32.load offset=60
      local.set 81
      i32.const 255
      local.set 82
      local.get 1
      local.get 82
      i32.and
      local.set 83
      block  ;; label = @2
        block  ;; label = @3
          local.get 83
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 1048714
        local.set 84
        i32.const 16
        local.set 85
        i32.const 0
        local.set 86
        i32.const 1049604
        local.set 87
        local.get 84
        local.get 85
        local.get 86
        local.get 87
        call $builtin.default_panic
        unreachable
      end
      local.get 81
      local.get 83
      i32.div_u
      local.set 88
      local.get 7
      local.get 88
      i32.store offset=60
      local.get 7
      i32.load offset=60
      local.set 89
      block  ;; label = @2
        block  ;; label = @3
          local.get 89
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        br 1 (;@1;)
      end
    end
    local.get 7
    i32.load offset=64
    local.set 90
    i32.const 24
    local.set 91
    local.get 7
    local.get 91
    i32.add
    local.set 92
    local.get 92
    local.set 93
    local.get 93
    local.get 90
    i32.add
    local.set 94
    i32.const 33
    local.set 95
    local.get 90
    local.set 96
    local.get 95
    local.set 97
    local.get 96
    local.get 97
    i32.le_u
    local.set 98
    i32.const 1
    local.set 99
    local.get 98
    local.get 99
    i32.and
    local.set 100
    block  ;; label = @1
      block  ;; label = @2
        local.get 100
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 33
      local.set 101
      local.get 90
      local.get 101
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    i32.const 33
    local.set 102
    local.get 102
    local.get 90
    i32.sub
    local.set 103
    i32.const 1
    local.set 104
    i32.const 1
    local.set 105
    local.get 104
    local.get 105
    i32.and
    local.set 106
    block  ;; label = @1
      block  ;; label = @2
        local.get 106
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 33
      local.set 107
      local.get 107
      local.get 107
      call $builtin.panicOutOfBounds
      unreachable
    end
    i32.const 33
    local.set 108
    local.get 90
    local.set 109
    local.get 108
    local.set 110
    local.get 109
    local.get 110
    i32.le_u
    local.set 111
    i32.const 1
    local.set 112
    local.get 111
    local.get 112
    i32.and
    local.set 113
    block  ;; label = @1
      block  ;; label = @2
        local.get 113
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 33
      local.set 114
      local.get 90
      local.get 114
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    local.get 103
    i32.store offset=92
    local.get 7
    local.get 94
    i32.store offset=88
    local.get 7
    i32.load offset=92
    local.set 115
    local.get 7
    i32.load offset=88
    local.set 116
    local.get 116
    local.get 115
    local.get 3
    local.get 4
    call $fmt.formatBuf__anon_2625
    local.set 117
    local.get 7
    local.get 117
    i32.store16 offset=86
    local.get 7
    i32.load16_u offset=86
    local.set 118
    i32.const 96
    local.set 119
    local.get 7
    local.get 119
    i32.add
    local.set 120
    local.get 120
    global.set $__stack_pointer
    local.get 118
    return)
  (func $math.absCast__anon_2622 (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.add
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 0
    return)
  (func $fmt.digitToChar (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store8 offset=5
    i32.const 1
    local.set 5
    local.get 1
    local.get 5
    i32.and
    local.set 6
    local.get 4
    local.get 6
    i32.store8 offset=6
    i32.const 0
    local.set 7
    i32.const 255
    local.set 8
    local.get 0
    local.get 8
    i32.and
    local.set 9
    i32.const 255
    local.set 10
    local.get 7
    local.get 10
    i32.and
    local.set 11
    local.get 9
    local.get 11
    i32.ge_u
    local.set 12
    i32.const 9
    local.set 13
    i32.const 255
    local.set 14
    local.get 0
    local.get 14
    i32.and
    local.set 15
    i32.const 255
    local.set 16
    local.get 13
    local.get 16
    i32.and
    local.set 17
    local.get 15
    local.get 17
    i32.le_u
    local.set 18
    local.get 12
    local.get 18
    i32.and
    local.set 19
    i32.const 1
    local.set 20
    local.get 19
    local.get 20
    i32.and
    local.set 21
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 21
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 255
                        local.set 22
                        local.get 0
                        local.get 22
                        i32.and
                        local.set 23
                        i32.const 48
                        local.set 24
                        local.get 23
                        local.get 24
                        i32.add
                        local.set 25
                        local.get 25
                        local.get 22
                        i32.and
                        local.set 26
                        local.get 26
                        local.get 25
                        i32.ne
                        local.set 27
                        local.get 25
                        local.set 28
                        local.get 4
                        local.get 28
                        i32.store8 offset=8
                        i32.const 1
                        local.set 29
                        local.get 27
                        local.get 29
                        i32.and
                        local.set 30
                        local.get 4
                        local.get 30
                        i32.store8 offset=9
                        local.get 4
                        i32.load8_u offset=9
                        local.set 31
                        i32.const 0
                        local.set 32
                        i32.const 1
                        local.set 33
                        local.get 31
                        local.get 33
                        i32.and
                        local.set 34
                        i32.const 1
                        local.set 35
                        local.get 32
                        local.get 35
                        i32.and
                        local.set 36
                        local.get 34
                        local.get 36
                        i32.eq
                        local.set 37
                        i32.const 1
                        local.set 38
                        local.get 37
                        local.get 38
                        i32.and
                        local.set 39
                        local.get 39
                        br_if 1 (;@9;)
                        br 2 (;@8;)
                      end
                      i32.const 10
                      local.set 40
                      i32.const 255
                      local.set 41
                      local.get 0
                      local.get 41
                      i32.and
                      local.set 42
                      i32.const 255
                      local.set 43
                      local.get 40
                      local.get 43
                      i32.and
                      local.set 44
                      local.get 42
                      local.get 44
                      i32.ge_u
                      local.set 45
                      i32.const 35
                      local.set 46
                      i32.const 255
                      local.set 47
                      local.get 0
                      local.get 47
                      i32.and
                      local.set 48
                      i32.const 255
                      local.set 49
                      local.get 46
                      local.get 49
                      i32.and
                      local.set 50
                      local.get 48
                      local.get 50
                      i32.le_u
                      local.set 51
                      local.get 45
                      local.get 51
                      i32.and
                      local.set 52
                      i32.const 1
                      local.set 53
                      local.get 52
                      local.get 53
                      i32.and
                      local.set 54
                      local.get 54
                      br_if 3 (;@6;)
                      br 4 (;@5;)
                    end
                    br 1 (;@7;)
                  end
                  i32.const 1048669
                  local.set 55
                  i32.const 16
                  local.set 56
                  i32.const 0
                  local.set 57
                  i32.const 1049668
                  local.set 58
                  local.get 55
                  local.get 56
                  local.get 57
                  local.get 58
                  call $builtin.default_panic
                  unreachable
                end
                local.get 4
                i32.load8_u offset=8
                local.set 59
                local.get 4
                local.get 59
                i32.store8 offset=7
                br 5 (;@1;)
              end
              i32.const 1
              local.set 60
              i32.const 1
              local.set 61
              local.get 1
              local.get 61
              i32.and
              local.set 62
              i32.const 1
              local.set 63
              local.get 60
              local.get 63
              i32.and
              local.set 64
              local.get 62
              local.get 64
              i32.eq
              local.set 65
              i32.const 1
              local.set 66
              local.get 65
              local.get 66
              i32.and
              local.set 67
              local.get 67
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            i32.const 1048847
            local.set 68
            i32.const 24
            local.set 69
            i32.const 0
            local.set 70
            i32.const 1049692
            local.set 71
            local.get 68
            local.get 69
            local.get 70
            local.get 71
            call $builtin.default_panic
            unreachable
          end
          i32.const 65
          local.set 72
          local.get 72
          local.set 73
          br 1 (;@2;)
        end
        i32.const 97
        local.set 74
        local.get 74
        local.set 73
      end
      local.get 73
      local.set 75
      i32.const 255
      local.set 76
      local.get 75
      local.get 76
      i32.and
      local.set 77
      i32.const -10
      local.set 78
      local.get 77
      local.get 78
      i32.add
      local.set 79
      local.get 79
      local.get 76
      i32.and
      local.set 80
      local.get 80
      local.get 79
      i32.ne
      local.set 81
      local.get 79
      drop
      local.get 4
      local.get 79
      i32.store8 offset=16
      i32.const 1
      local.set 82
      local.get 81
      local.get 82
      i32.and
      local.set 83
      local.get 4
      local.get 83
      i32.store8 offset=17
      local.get 4
      i32.load8_u offset=17
      local.set 84
      i32.const 0
      local.set 85
      i32.const 1
      local.set 86
      local.get 84
      local.get 86
      i32.and
      local.set 87
      i32.const 1
      local.set 88
      local.get 85
      local.get 88
      i32.and
      local.set 89
      local.get 87
      local.get 89
      i32.eq
      local.set 90
      i32.const 1
      local.set 91
      local.get 90
      local.get 91
      i32.and
      local.set 92
      block  ;; label = @2
        block  ;; label = @3
          local.get 92
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 1048669
        local.set 93
        i32.const 16
        local.set 94
        i32.const 0
        local.set 95
        i32.const 1049676
        local.set 96
        local.get 93
        local.get 94
        local.get 95
        local.get 96
        call $builtin.default_panic
        unreachable
      end
      local.get 4
      i32.load8_u offset=16
      local.set 97
      i32.const 255
      local.set 98
      local.get 0
      local.get 98
      i32.and
      local.set 99
      local.get 99
      local.get 97
      i32.add
      local.set 100
      local.get 100
      local.get 98
      i32.and
      local.set 101
      local.get 101
      local.get 100
      i32.ne
      local.set 102
      local.get 100
      local.set 103
      local.get 4
      local.get 103
      i32.store8 offset=24
      i32.const 1
      local.set 104
      local.get 102
      local.get 104
      i32.and
      local.set 105
      local.get 4
      local.get 105
      i32.store8 offset=25
      local.get 4
      i32.load8_u offset=25
      local.set 106
      i32.const 0
      local.set 107
      i32.const 1
      local.set 108
      local.get 106
      local.get 108
      i32.and
      local.set 109
      i32.const 1
      local.set 110
      local.get 107
      local.get 110
      i32.and
      local.set 111
      local.get 109
      local.get 111
      i32.eq
      local.set 112
      i32.const 1
      local.set 113
      local.get 112
      local.get 113
      i32.and
      local.set 114
      block  ;; label = @2
        block  ;; label = @3
          local.get 114
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 1048669
        local.set 115
        i32.const 16
        local.set 116
        i32.const 0
        local.set 117
        i32.const 1049684
        local.set 118
        local.get 115
        local.get 116
        local.get 117
        local.get 118
        call $builtin.default_panic
        unreachable
      end
      local.get 4
      i32.load8_u offset=24
      local.set 119
      local.get 4
      local.get 119
      i32.store8 offset=7
    end
    local.get 4
    i32.load8_u offset=7
    local.set 120
    i32.const 32
    local.set 121
    local.get 4
    local.get 121
    i32.add
    local.set 122
    local.get 122
    global.set $__stack_pointer
    local.get 120
    return)
  (func $fmt.formatBuf__anon_2625 (type 1) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 144
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 1
    local.set 7
    local.get 0
    local.set 8
    local.get 6
    local.get 1
    i32.store offset=4
    local.get 6
    local.get 0
    i32.store
    i32.const 8
    local.set 9
    local.get 2
    local.get 9
    i32.add
    local.set 10
    local.get 10
    i64.load align=4
    local.set 11
    local.get 6
    local.get 11
    i64.store offset=8
    local.get 6
    i32.load8_u offset=12
    local.set 12
    i32.const 0
    local.set 13
    i32.const 255
    local.set 14
    local.get 12
    local.get 14
    i32.and
    local.set 15
    i32.const 255
    local.set 16
    local.get 13
    local.get 16
    i32.and
    local.set 17
    local.get 15
    local.get 17
    i32.ne
    local.set 18
    i32.const 1
    local.set 19
    local.get 18
    local.get 19
    i32.and
    local.set 20
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 20
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  i32.load offset=8
                  local.set 21
                  local.get 6
                  local.get 21
                  i32.store offset=20
                  i32.const 24
                  local.set 22
                  local.get 6
                  local.get 22
                  i32.add
                  local.set 23
                  local.get 23
                  local.set 24
                  local.get 24
                  local.get 8
                  local.get 7
                  call $unicode.utf8CountCodepoints
                  local.get 6
                  i32.load16_u offset=28
                  local.set 25
                  i32.const 0
                  local.set 26
                  i32.const 65535
                  local.set 27
                  local.get 25
                  local.get 27
                  i32.and
                  local.set 28
                  i32.const 65535
                  local.set 29
                  local.get 26
                  local.get 29
                  i32.and
                  local.set 30
                  local.get 28
                  local.get 30
                  i32.eq
                  local.set 31
                  i32.const 1
                  local.set 32
                  local.get 31
                  local.get 32
                  i32.and
                  local.set 33
                  local.get 33
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                local.get 3
                i32.load
                local.set 34
                local.get 6
                local.get 34
                i32.store offset=136
                i32.const 136
                local.set 35
                local.get 6
                local.get 35
                i32.add
                local.set 36
                local.get 36
                local.set 37
                local.get 37
                local.get 8
                local.get 7
                call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeAll
                local.set 38
                i32.const 0
                local.set 39
                i32.const 65535
                local.set 40
                local.get 38
                local.get 40
                i32.and
                local.set 41
                i32.const 65535
                local.set 42
                local.get 39
                local.get 42
                i32.and
                local.set 43
                local.get 41
                local.get 43
                i32.ne
                local.set 44
                i32.const 1
                local.set 45
                local.get 44
                local.get 45
                i32.and
                local.set 46
                local.get 46
                br_if 3 (;@3;)
                br 4 (;@2;)
              end
              local.get 6
              i32.load offset=24
              local.set 47
              local.get 47
              local.set 48
              br 1 (;@4;)
            end
            local.get 7
            local.set 48
          end
          local.get 48
          local.set 49
          local.get 6
          local.get 49
          i32.store offset=36
          local.get 49
          local.set 50
          local.get 21
          local.set 51
          local.get 50
          local.get 51
          i32.lt_u
          local.set 52
          i32.const 1
          local.set 53
          local.get 52
          local.get 53
          i32.and
          local.set 54
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 54
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 21
                    local.get 49
                    i32.sub
                    local.set 55
                    local.get 55
                    local.get 21
                    i32.gt_u
                    local.set 56
                    local.get 6
                    local.get 55
                    i32.store offset=40
                    i32.const 1
                    local.set 57
                    local.get 56
                    local.get 57
                    i32.and
                    local.set 58
                    local.get 6
                    local.get 58
                    i32.store8 offset=44
                    local.get 6
                    i32.load8_u offset=44
                    local.set 59
                    i32.const 0
                    local.set 60
                    i32.const 1
                    local.set 61
                    local.get 59
                    local.get 61
                    i32.and
                    local.set 62
                    i32.const 1
                    local.set 63
                    local.get 60
                    local.get 63
                    i32.and
                    local.set 64
                    local.get 62
                    local.get 64
                    i32.eq
                    local.set 65
                    i32.const 1
                    local.set 66
                    local.get 65
                    local.get 66
                    i32.and
                    local.set 67
                    local.get 67
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                  i32.const 0
                  local.set 68
                  local.get 68
                  local.set 69
                  br 3 (;@4;)
                end
                br 1 (;@5;)
              end
              i32.const 1048669
              local.set 70
              i32.const 16
              local.set 71
              i32.const 0
              local.set 72
              i32.const 1049612
              local.set 73
              local.get 70
              local.get 71
              local.get 72
              local.get 73
              call $builtin.default_panic
              unreachable
            end
            local.get 6
            i32.load offset=40
            local.set 74
            local.get 74
            local.set 69
          end
          local.get 69
          local.set 75
          local.get 6
          local.get 75
          i32.store offset=48
          block  ;; label = @4
            local.get 75
            br_if 0 (;@4;)
            local.get 3
            i32.load
            local.set 76
            local.get 6
            local.get 76
            i32.store offset=56
            i32.const 56
            local.set 77
            local.get 6
            local.get 77
            i32.add
            local.set 78
            local.get 78
            local.set 79
            local.get 79
            local.get 8
            local.get 7
            call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeAll
            local.set 80
            local.get 6
            local.get 80
            i32.store16 offset=54
            local.get 6
            i32.load16_u offset=54
            local.set 81
            i32.const 144
            local.set 82
            local.get 6
            local.get 82
            i32.add
            local.set 83
            local.get 83
            global.set $__stack_pointer
            local.get 81
            return
          end
          local.get 2
          i32.load8_u offset=16
          local.set 84
          i32.const 2
          local.set 85
          local.get 84
          local.get 85
          i32.add
          local.set 86
          i32.const 3
          local.set 87
          local.get 86
          local.get 87
          i32.and
          local.set 88
          i32.const 0
          local.set 89
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 89
                    br_if 0 (;@8;)
                    local.get 88
                    br_table 3 (;@5;) 0 (;@8;) 1 (;@7;) 2 (;@6;) 3 (;@5;)
                  end
                  i32.const 1048811
                  local.set 90
                  i32.const 23
                  local.set 91
                  i32.const 0
                  local.set 92
                  i32.const 1049628
                  local.set 93
                  local.get 90
                  local.get 91
                  local.get 92
                  local.get 93
                  call $builtin.default_panic
                  unreachable
                end
                local.get 3
                i32.load
                local.set 94
                local.get 6
                local.get 94
                i32.store offset=64
                i32.const 64
                local.set 95
                local.get 6
                local.get 95
                i32.add
                local.set 96
                local.get 96
                local.set 97
                local.get 97
                local.get 8
                local.get 7
                call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeAll
                local.set 98
                i32.const 0
                local.set 99
                i32.const 65535
                local.set 100
                local.get 98
                local.get 100
                i32.and
                local.set 101
                i32.const 65535
                local.set 102
                local.get 99
                local.get 102
                i32.and
                local.set 103
                local.get 101
                local.get 103
                i32.ne
                local.set 104
                i32.const 1
                local.set 105
                local.get 104
                local.get 105
                i32.and
                local.set 106
                block  ;; label = @7
                  local.get 106
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 144
                  local.set 107
                  local.get 6
                  local.get 107
                  i32.add
                  local.set 108
                  local.get 108
                  global.set $__stack_pointer
                  local.get 98
                  return
                end
                local.get 3
                i32.load
                local.set 109
                local.get 6
                local.get 109
                i32.store offset=72
                local.get 2
                i32.load8_u offset=17
                local.set 110
                i32.const 72
                local.set 111
                local.get 6
                local.get 111
                i32.add
                local.set 112
                local.get 112
                local.set 113
                local.get 113
                local.get 110
                local.get 75
                call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeByteNTimes
                local.set 114
                i32.const 0
                local.set 115
                i32.const 65535
                local.set 116
                local.get 114
                local.get 116
                i32.and
                local.set 117
                i32.const 65535
                local.set 118
                local.get 115
                local.get 118
                i32.and
                local.set 119
                local.get 117
                local.get 119
                i32.ne
                local.set 120
                i32.const 1
                local.set 121
                local.get 120
                local.get 121
                i32.and
                local.set 122
                block  ;; label = @7
                  local.get 122
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 144
                  local.set 123
                  local.get 6
                  local.get 123
                  i32.add
                  local.set 124
                  local.get 124
                  global.set $__stack_pointer
                  local.get 114
                  return
                end
                br 2 (;@4;)
              end
              i32.const 1
              local.set 125
              local.get 75
              local.get 125
              i32.shr_u
              local.set 126
              local.get 6
              local.get 126
              i32.store offset=76
              i32.const 1
              local.set 127
              local.get 75
              local.get 127
              i32.add
              local.set 128
              local.get 128
              i32.eqz
              local.set 129
              local.get 6
              local.get 128
              i32.store offset=80
              i32.const 1
              local.set 130
              local.get 129
              local.get 130
              i32.and
              local.set 131
              local.get 6
              local.get 131
              i32.store8 offset=84
              local.get 6
              i32.load8_u offset=84
              local.set 132
              i32.const 0
              local.set 133
              i32.const 1
              local.set 134
              local.get 132
              local.get 134
              i32.and
              local.set 135
              i32.const 1
              local.set 136
              local.get 133
              local.get 136
              i32.and
              local.set 137
              local.get 135
              local.get 137
              i32.eq
              local.set 138
              i32.const 1
              local.set 139
              local.get 138
              local.get 139
              i32.and
              local.set 140
              block  ;; label = @6
                block  ;; label = @7
                  local.get 140
                  i32.eqz
                  br_if 0 (;@7;)
                  br 1 (;@6;)
                end
                i32.const 1048669
                local.set 141
                i32.const 16
                local.set 142
                i32.const 0
                local.set 143
                i32.const 1049620
                local.set 144
                local.get 141
                local.get 142
                local.get 143
                local.get 144
                call $builtin.default_panic
                unreachable
              end
              local.get 6
              i32.load offset=80
              local.set 145
              i32.const 1
              local.set 146
              local.get 145
              local.get 146
              i32.shr_u
              local.set 147
              local.get 6
              local.get 147
              i32.store offset=92
              local.get 3
              i32.load
              local.set 148
              local.get 6
              local.get 148
              i32.store offset=96
              local.get 2
              i32.load8_u offset=17
              local.set 149
              i32.const 96
              local.set 150
              local.get 6
              local.get 150
              i32.add
              local.set 151
              local.get 151
              local.set 152
              local.get 152
              local.get 149
              local.get 126
              call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeByteNTimes
              local.set 153
              i32.const 0
              local.set 154
              i32.const 65535
              local.set 155
              local.get 153
              local.get 155
              i32.and
              local.set 156
              i32.const 65535
              local.set 157
              local.get 154
              local.get 157
              i32.and
              local.set 158
              local.get 156
              local.get 158
              i32.ne
              local.set 159
              i32.const 1
              local.set 160
              local.get 159
              local.get 160
              i32.and
              local.set 161
              block  ;; label = @6
                local.get 161
                i32.eqz
                br_if 0 (;@6;)
                i32.const 144
                local.set 162
                local.get 6
                local.get 162
                i32.add
                local.set 163
                local.get 163
                global.set $__stack_pointer
                local.get 153
                return
              end
              local.get 3
              i32.load
              local.set 164
              local.get 6
              local.get 164
              i32.store offset=104
              i32.const 104
              local.set 165
              local.get 6
              local.get 165
              i32.add
              local.set 166
              local.get 166
              local.set 167
              local.get 167
              local.get 8
              local.get 7
              call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeAll
              local.set 168
              i32.const 0
              local.set 169
              i32.const 65535
              local.set 170
              local.get 168
              local.get 170
              i32.and
              local.set 171
              i32.const 65535
              local.set 172
              local.get 169
              local.get 172
              i32.and
              local.set 173
              local.get 171
              local.get 173
              i32.ne
              local.set 174
              i32.const 1
              local.set 175
              local.get 174
              local.get 175
              i32.and
              local.set 176
              block  ;; label = @6
                local.get 176
                i32.eqz
                br_if 0 (;@6;)
                i32.const 144
                local.set 177
                local.get 6
                local.get 177
                i32.add
                local.set 178
                local.get 178
                global.set $__stack_pointer
                local.get 168
                return
              end
              local.get 3
              i32.load
              local.set 179
              local.get 6
              local.get 179
              i32.store offset=112
              local.get 2
              i32.load8_u offset=17
              local.set 180
              i32.const 112
              local.set 181
              local.get 6
              local.get 181
              i32.add
              local.set 182
              local.get 182
              local.set 183
              local.get 183
              local.get 180
              local.get 147
              call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeByteNTimes
              local.set 184
              i32.const 0
              local.set 185
              i32.const 65535
              local.set 186
              local.get 184
              local.get 186
              i32.and
              local.set 187
              i32.const 65535
              local.set 188
              local.get 185
              local.get 188
              i32.and
              local.set 189
              local.get 187
              local.get 189
              i32.ne
              local.set 190
              i32.const 1
              local.set 191
              local.get 190
              local.get 191
              i32.and
              local.set 192
              block  ;; label = @6
                local.get 192
                i32.eqz
                br_if 0 (;@6;)
                i32.const 144
                local.set 193
                local.get 6
                local.get 193
                i32.add
                local.set 194
                local.get 194
                global.set $__stack_pointer
                local.get 184
                return
              end
              br 1 (;@4;)
            end
            local.get 3
            i32.load
            local.set 195
            local.get 6
            local.get 195
            i32.store offset=120
            local.get 2
            i32.load8_u offset=17
            local.set 196
            i32.const 120
            local.set 197
            local.get 6
            local.get 197
            i32.add
            local.set 198
            local.get 198
            local.set 199
            local.get 199
            local.get 196
            local.get 75
            call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeByteNTimes
            local.set 200
            i32.const 0
            local.set 201
            i32.const 65535
            local.set 202
            local.get 200
            local.get 202
            i32.and
            local.set 203
            i32.const 65535
            local.set 204
            local.get 201
            local.get 204
            i32.and
            local.set 205
            local.get 203
            local.get 205
            i32.ne
            local.set 206
            i32.const 1
            local.set 207
            local.get 206
            local.get 207
            i32.and
            local.set 208
            block  ;; label = @5
              local.get 208
              i32.eqz
              br_if 0 (;@5;)
              i32.const 144
              local.set 209
              local.get 6
              local.get 209
              i32.add
              local.set 210
              local.get 210
              global.set $__stack_pointer
              local.get 200
              return
            end
            local.get 3
            i32.load
            local.set 211
            local.get 6
            local.get 211
            i32.store offset=128
            i32.const 128
            local.set 212
            local.get 6
            local.get 212
            i32.add
            local.set 213
            local.get 213
            local.set 214
            local.get 214
            local.get 8
            local.get 7
            call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeAll
            local.set 215
            i32.const 0
            local.set 216
            i32.const 65535
            local.set 217
            local.get 215
            local.get 217
            i32.and
            local.set 218
            i32.const 65535
            local.set 219
            local.get 216
            local.get 219
            i32.and
            local.set 220
            local.get 218
            local.get 220
            i32.ne
            local.set 221
            i32.const 1
            local.set 222
            local.get 221
            local.get 222
            i32.and
            local.set 223
            block  ;; label = @5
              local.get 223
              i32.eqz
              br_if 0 (;@5;)
              i32.const 144
              local.set 224
              local.get 6
              local.get 224
              i32.add
              local.set 225
              local.get 225
              global.set $__stack_pointer
              local.get 215
              return
            end
          end
          br 2 (;@1;)
        end
        i32.const 144
        local.set 226
        local.get 6
        local.get 226
        i32.add
        local.set 227
        local.get 227
        global.set $__stack_pointer
        local.get 38
        return
      end
    end
    i32.const 0
    local.set 228
    i32.const 144
    local.set 229
    local.get 6
    local.get 229
    i32.add
    local.set 230
    local.get 230
    global.set $__stack_pointer
    local.get 228
    return)
  (func $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeByteNTimes (type 8) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 304
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store8 offset=3
    local.get 5
    local.get 2
    i32.store offset=4
    i32.const 256
    local.set 6
    i32.const 170
    local.set 7
    i32.const 8
    local.set 8
    local.get 5
    local.get 8
    i32.add
    local.set 9
    local.get 9
    local.get 7
    local.get 6
    call $memset
    drop
    i32.const 8
    local.set 10
    local.get 5
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.set 12
    i32.const 1
    local.set 13
    i32.const 1
    local.set 14
    local.get 13
    local.get 14
    i32.and
    local.set 15
    block  ;; label = @1
      block  ;; label = @2
        local.get 15
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 0
      local.set 16
      i32.const 256
      local.set 17
      local.get 16
      local.get 17
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    i32.const 256
    local.set 18
    local.get 12
    local.set 19
    local.get 19
    local.get 18
    local.get 1
    call $mem.set__anon_2369
    local.get 5
    local.get 2
    i32.store offset=264
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=264
        local.set 20
        i32.const 0
        local.set 21
        local.get 20
        local.set 22
        local.get 21
        local.set 23
        local.get 22
        local.get 23
        i32.gt_u
        local.set 24
        i32.const 1
        local.set 25
        local.get 24
        local.get 25
        i32.and
        local.set 26
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 26
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                i32.load offset=264
                local.set 27
                i32.const 256
                local.set 28
                local.get 27
                local.get 28
                call $math.min__anon_2370
                local.set 29
                local.get 5
                local.get 29
                i32.store offset=268
                local.get 0
                i32.load
                local.set 30
                local.get 5
                local.get 30
                i32.store offset=272
                local.get 5
                i32.load offset=272
                local.set 31
                local.get 5
                local.get 31
                i32.store offset=280
                i32.const 8
                local.set 32
                local.get 5
                local.get 32
                i32.add
                local.set 33
                local.get 33
                local.set 34
                i32.const 0
                local.set 35
                local.get 35
                local.set 36
                local.get 29
                local.set 37
                local.get 36
                local.get 37
                i32.le_u
                local.set 38
                i32.const 1
                local.set 39
                local.get 38
                local.get 39
                i32.and
                local.set 40
                local.get 40
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              br 4 (;@1;)
            end
            br 1 (;@3;)
          end
          i32.const 0
          local.set 41
          local.get 41
          local.get 29
          call $builtin.panicStartGreaterThanEnd
          unreachable
        end
        i32.const 256
        local.set 42
        local.get 29
        local.set 43
        local.get 42
        local.set 44
        local.get 43
        local.get 44
        i32.le_u
        local.set 45
        i32.const 1
        local.set 46
        local.get 45
        local.get 46
        i32.and
        local.set 47
        block  ;; label = @3
          block  ;; label = @4
            local.get 47
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 256
          local.set 48
          local.get 29
          local.get 48
          call $builtin.panicOutOfBounds
          unreachable
        end
        i32.const 0
        local.set 49
        local.get 49
        local.set 50
        local.get 29
        local.set 51
        local.get 50
        local.get 51
        i32.le_u
        local.set 52
        i32.const 1
        local.set 53
        local.get 52
        local.get 53
        i32.and
        local.set 54
        block  ;; label = @3
          block  ;; label = @4
            local.get 54
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 0
          local.set 55
          local.get 55
          local.get 29
          call $builtin.panicOutOfBounds
          unreachable
        end
        local.get 5
        local.get 29
        i32.store offset=292
        local.get 5
        local.get 34
        i32.store offset=288
        local.get 5
        i32.load offset=292
        local.set 56
        local.get 5
        i32.load offset=288
        local.set 57
        i32.const 280
        local.set 58
        local.get 5
        local.get 58
        i32.add
        local.set 59
        local.get 59
        local.set 60
        local.get 60
        local.get 57
        local.get 56
        call $io.writer.Writer_*io.fixed_buffer_stream.FixedBufferStream___u8__error_NoSpaceLeft___function_'write'__.writeAll
        local.set 61
        i32.const 0
        local.set 62
        i32.const 65535
        local.set 63
        local.get 61
        local.get 63
        i32.and
        local.set 64
        i32.const 65535
        local.set 65
        local.get 62
        local.get 65
        i32.and
        local.set 66
        local.get 64
        local.get 66
        i32.ne
        local.set 67
        i32.const 1
        local.set 68
        local.get 67
        local.get 68
        i32.and
        local.set 69
        block  ;; label = @3
          local.get 69
          i32.eqz
          br_if 0 (;@3;)
          i32.const 304
          local.set 70
          local.get 5
          local.get 70
          i32.add
          local.set 71
          local.get 71
          global.set $__stack_pointer
          local.get 61
          return
        end
        local.get 5
        i32.load offset=264
        local.set 72
        local.get 72
        local.get 29
        i32.sub
        local.set 73
        local.get 73
        local.get 72
        i32.gt_u
        local.set 74
        local.get 5
        local.get 73
        i32.store offset=296
        i32.const 1
        local.set 75
        local.get 74
        local.get 75
        i32.and
        local.set 76
        local.get 5
        local.get 76
        i32.store8 offset=300
        local.get 5
        i32.load8_u offset=300
        local.set 77
        i32.const 0
        local.set 78
        i32.const 1
        local.set 79
        local.get 77
        local.get 79
        i32.and
        local.set 80
        i32.const 1
        local.set 81
        local.get 78
        local.get 81
        i32.and
        local.set 82
        local.get 80
        local.get 82
        i32.eq
        local.set 83
        i32.const 1
        local.set 84
        local.get 83
        local.get 84
        i32.and
        local.set 85
        block  ;; label = @3
          block  ;; label = @4
            local.get 85
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 1048669
          local.set 86
          i32.const 16
          local.set 87
          i32.const 0
          local.set 88
          i32.const 1049700
          local.set 89
          local.get 86
          local.get 87
          local.get 88
          local.get 89
          call $builtin.default_panic
          unreachable
        end
        local.get 5
        i32.load offset=296
        local.set 90
        local.get 5
        local.get 90
        i32.store offset=264
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 91
    i32.const 304
    local.set 92
    local.get 5
    local.get 92
    i32.add
    local.set 93
    local.get 93
    global.set $__stack_pointer
    local.get 91
    return)
  (func $fmt.formatIntValue__anon_2628 (type 8) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store16 offset=10
    local.get 5
    local.get 0
    i32.store16 offset=12
    i32.const 10
    local.set 6
    i32.const 0
    local.set 7
    local.get 0
    local.get 6
    local.get 7
    local.get 1
    local.get 2
    call $fmt.formatInt__anon_2631
    local.set 8
    local.get 5
    local.get 8
    i32.store16 offset=14
    local.get 5
    i32.load16_u offset=14
    local.set 9
    i32.const 16
    local.set 10
    local.get 5
    local.get 10
    i32.add
    local.set 11
    local.get 11
    global.set $__stack_pointer
    local.get 9
    return)
  (func $fmt.formatInt__anon_2631 (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 5
    i32.const 64
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    local.get 7
    global.set $__stack_pointer
    local.get 7
    local.get 0
    i32.store16
    local.get 7
    local.get 1
    i32.store8 offset=2
    i32.const 1
    local.set 8
    local.get 2
    local.get 8
    i32.and
    local.set 9
    local.get 7
    local.get 9
    i32.store8 offset=3
    i32.const 2
    local.set 10
    i32.const 255
    local.set 11
    local.get 1
    local.get 11
    i32.and
    local.set 12
    i32.const 255
    local.set 13
    local.get 10
    local.get 13
    i32.and
    local.set 14
    local.get 12
    local.get 14
    i32.ge_u
    local.set 15
    local.get 15
    call $debug.assert
    local.get 7
    local.get 0
    i32.store16 offset=4
    local.get 0
    call $math.absCast__anon_2633
    local.set 16
    local.get 7
    local.get 16
    i32.store16 offset=6
    i32.const 24
    local.set 17
    local.get 7
    local.get 17
    i32.add
    local.set 18
    i32.const -86
    local.set 19
    local.get 18
    local.get 19
    i32.store8
    i32.const 16
    local.set 20
    local.get 7
    local.get 20
    i32.add
    local.set 21
    i64.const -6148914691236517206
    local.set 22
    local.get 21
    local.get 22
    i64.store
    local.get 7
    local.get 22
    i64.store offset=8
    local.get 7
    local.get 16
    i32.store16 offset=30
    i32.const 17
    local.set 23
    local.get 7
    local.get 23
    i32.store offset=32
    loop  ;; label = @1
      local.get 7
      i32.load16_u offset=30
      local.set 24
      i32.const 255
      local.set 25
      local.get 1
      local.get 25
      i32.and
      local.set 26
      i32.const 0
      local.set 27
      i32.const 65535
      local.set 28
      local.get 26
      local.get 28
      i32.and
      local.set 29
      i32.const 65535
      local.set 30
      local.get 27
      local.get 30
      i32.and
      local.set 31
      local.get 29
      local.get 31
      i32.ne
      local.set 32
      i32.const 1
      local.set 33
      local.get 32
      local.get 33
      i32.and
      local.set 34
      block  ;; label = @2
        block  ;; label = @3
          local.get 34
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 1048714
        local.set 35
        i32.const 16
        local.set 36
        i32.const 0
        local.set 37
        i32.const 1049636
        local.set 38
        local.get 35
        local.get 36
        local.get 37
        local.get 38
        call $builtin.default_panic
        unreachable
      end
      i32.const 65535
      local.set 39
      local.get 26
      local.get 39
      i32.and
      local.set 40
      local.get 24
      local.get 39
      i32.and
      local.set 41
      local.get 41
      local.get 40
      i32.rem_u
      local.set 42
      local.get 7
      local.get 42
      i32.store16 offset=38
      local.get 7
      i32.load offset=32
      local.set 43
      i32.const -1
      local.set 44
      local.get 43
      local.get 44
      i32.add
      local.set 45
      local.get 45
      local.get 43
      i32.gt_u
      local.set 46
      local.get 7
      local.get 45
      i32.store offset=40
      i32.const 1
      local.set 47
      local.get 46
      local.get 47
      i32.and
      local.set 48
      local.get 7
      local.get 48
      i32.store8 offset=44
      local.get 7
      i32.load8_u offset=44
      local.set 49
      i32.const 0
      local.set 50
      i32.const 1
      local.set 51
      local.get 49
      local.get 51
      i32.and
      local.set 52
      i32.const 1
      local.set 53
      local.get 50
      local.get 53
      i32.and
      local.set 54
      local.get 52
      local.get 54
      i32.eq
      local.set 55
      i32.const 1
      local.set 56
      local.get 55
      local.get 56
      i32.and
      local.set 57
      block  ;; label = @2
        block  ;; label = @3
          local.get 57
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 1048669
        local.set 58
        i32.const 16
        local.set 59
        i32.const 0
        local.set 60
        i32.const 1049644
        local.set 61
        local.get 58
        local.get 59
        local.get 60
        local.get 61
        call $builtin.default_panic
        unreachable
      end
      local.get 7
      i32.load offset=40
      local.set 62
      local.get 7
      local.get 62
      i32.store offset=32
      local.get 7
      i32.load offset=32
      local.set 63
      i32.const 17
      local.set 64
      local.get 63
      local.set 65
      local.get 64
      local.set 66
      local.get 65
      local.get 66
      i32.lt_u
      local.set 67
      i32.const 1
      local.set 68
      local.get 67
      local.get 68
      i32.and
      local.set 69
      block  ;; label = @2
        block  ;; label = @3
          local.get 69
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 17
        local.set 70
        local.get 63
        local.get 70
        call $builtin.panicOutOfBounds
        unreachable
      end
      i32.const 8
      local.set 71
      local.get 7
      local.get 71
      i32.add
      local.set 72
      local.get 72
      local.get 63
      i32.add
      local.set 73
      i32.const 255
      local.set 74
      local.get 74
      local.get 42
      i32.sub
      local.set 75
      i32.const 255
      local.set 76
      i32.const 65535
      local.set 77
      local.get 75
      local.get 77
      i32.and
      local.set 78
      i32.const 65535
      local.set 79
      local.get 76
      local.get 79
      i32.and
      local.set 80
      local.get 78
      local.get 80
      i32.le_u
      local.set 81
      i32.const 1
      local.set 82
      local.get 81
      local.get 82
      i32.and
      local.set 83
      block  ;; label = @2
        block  ;; label = @3
          local.get 83
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 1048686
        local.set 84
        i32.const 27
        local.set 85
        i32.const 0
        local.set 86
        i32.const 1049652
        local.set 87
        local.get 84
        local.get 85
        local.get 86
        local.get 87
        call $builtin.default_panic
        unreachable
      end
      local.get 42
      local.get 2
      call $fmt.digitToChar
      local.set 88
      local.get 73
      local.get 88
      i32.store8
      local.get 7
      i32.load16_u offset=30
      local.set 89
      i32.const 255
      local.set 90
      local.get 1
      local.get 90
      i32.and
      local.set 91
      i32.const 0
      local.set 92
      i32.const 65535
      local.set 93
      local.get 91
      local.get 93
      i32.and
      local.set 94
      i32.const 65535
      local.set 95
      local.get 92
      local.get 95
      i32.and
      local.set 96
      local.get 94
      local.get 96
      i32.ne
      local.set 97
      i32.const 1
      local.set 98
      local.get 97
      local.get 98
      i32.and
      local.set 99
      block  ;; label = @2
        block  ;; label = @3
          local.get 99
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 1048714
        local.set 100
        i32.const 16
        local.set 101
        i32.const 0
        local.set 102
        i32.const 1049660
        local.set 103
        local.get 100
        local.get 101
        local.get 102
        local.get 103
        call $builtin.default_panic
        unreachable
      end
      i32.const 65535
      local.set 104
      local.get 91
      local.get 104
      i32.and
      local.set 105
      local.get 89
      local.get 104
      i32.and
      local.set 106
      local.get 106
      local.get 105
      i32.div_u
      local.set 107
      local.get 7
      local.get 107
      i32.store16 offset=30
      local.get 7
      i32.load16_u offset=30
      local.set 108
      i32.const 0
      local.set 109
      i32.const 65535
      local.set 110
      local.get 108
      local.get 110
      i32.and
      local.set 111
      i32.const 65535
      local.set 112
      local.get 109
      local.get 112
      i32.and
      local.set 113
      local.get 111
      local.get 113
      i32.eq
      local.set 114
      i32.const 1
      local.set 115
      local.get 114
      local.get 115
      i32.and
      local.set 116
      block  ;; label = @2
        block  ;; label = @3
          local.get 116
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        br 1 (;@1;)
      end
    end
    local.get 7
    i32.load offset=32
    local.set 117
    i32.const 8
    local.set 118
    local.get 7
    local.get 118
    i32.add
    local.set 119
    local.get 119
    local.set 120
    local.get 120
    local.get 117
    i32.add
    local.set 121
    i32.const 17
    local.set 122
    local.get 117
    local.set 123
    local.get 122
    local.set 124
    local.get 123
    local.get 124
    i32.le_u
    local.set 125
    i32.const 1
    local.set 126
    local.get 125
    local.get 126
    i32.and
    local.set 127
    block  ;; label = @1
      block  ;; label = @2
        local.get 127
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 17
      local.set 128
      local.get 117
      local.get 128
      call $builtin.panicStartGreaterThanEnd
      unreachable
    end
    i32.const 17
    local.set 129
    local.get 129
    local.get 117
    i32.sub
    local.set 130
    i32.const 1
    local.set 131
    i32.const 1
    local.set 132
    local.get 131
    local.get 132
    i32.and
    local.set 133
    block  ;; label = @1
      block  ;; label = @2
        local.get 133
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 17
      local.set 134
      local.get 134
      local.get 134
      call $builtin.panicOutOfBounds
      unreachable
    end
    i32.const 17
    local.set 135
    local.get 117
    local.set 136
    local.get 135
    local.set 137
    local.get 136
    local.get 137
    i32.le_u
    local.set 138
    i32.const 1
    local.set 139
    local.get 138
    local.get 139
    i32.and
    local.set 140
    block  ;; label = @1
      block  ;; label = @2
        local.get 140
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 17
      local.set 141
      local.get 117
      local.get 141
      call $builtin.panicOutOfBounds
      unreachable
    end
    local.get 7
    local.get 130
    i32.store offset=60
    local.get 7
    local.get 121
    i32.store offset=56
    local.get 7
    i32.load offset=60
    local.set 142
    local.get 7
    i32.load offset=56
    local.set 143
    local.get 143
    local.get 142
    local.get 3
    local.get 4
    call $fmt.formatBuf__anon_2035
    local.set 144
    local.get 7
    local.get 144
    i32.store16 offset=54
    local.get 7
    i32.load16_u offset=54
    local.set 145
    i32.const 64
    local.set 146
    local.get 7
    local.get 146
    i32.add
    local.set 147
    local.get 147
    global.set $__stack_pointer
    local.get 145
    return)
  (func $math.absCast__anon_2633 (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store16 offset=14
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.add
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 0
    return)
  (func $memset (type 8) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const -1
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 7
          i32.and
          local.tee 4
          br_if 0 (;@3;)
          local.get 0
          local.set 5
          br 1 (;@2;)
        end
        local.get 0
        local.set 5
        loop  ;; label = @3
          local.get 5
          local.get 1
          i32.store8
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          local.get 2
          i32.const -1
          i32.add
          local.set 2
          local.get 4
          i32.const -1
          i32.add
          local.tee 4
          br_if 0 (;@3;)
        end
      end
      local.get 3
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 5
        local.get 1
        i32.store8 offset=7
        local.get 5
        local.get 1
        i32.store8 offset=6
        local.get 5
        local.get 1
        i32.store8 offset=5
        local.get 5
        local.get 1
        i32.store8 offset=4
        local.get 5
        local.get 1
        i32.store8 offset=3
        local.get 5
        local.get 1
        i32.store8 offset=2
        local.get 5
        local.get 1
        i32.store8 offset=1
        local.get 5
        local.get 1
        i32.store8
        local.get 5
        i32.const 8
        i32.add
        local.set 5
        local.get 2
        i32.const -8
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (data $.rodata (i32.const 1048576) "start index {d} is larger than end index {d}\00index out of bounds: index {d}, len {d}\00{ ... }\00integer overflow\00integer cast truncated bits\00division by zero\00hello\00cast causes pointer to be null\00shift amount is greater than the type size\00switch on corrupt value\00HELLO THere\00reached unreachable code\00(msg truncated)\00unexpected errno: {d}\0a\00Unable to dump stack trace: not implemented for Wasm\0a\00\00\00\00\00\00\00\00\00\00\00\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\0f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02 \00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\13\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02 \00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
