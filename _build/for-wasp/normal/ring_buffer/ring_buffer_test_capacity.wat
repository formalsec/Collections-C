(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32)))
  (import "symbolic" "i32_symbol" (func $symbol (type 2)))
  (import "symbolic" "assert" (func $assert (type 1)))
  (import "summaries" "alloc" (func $alloc (type 0)))
  (import "summaries" "dealloc" (func $dealloc (type 1)))
  (func $setup_test (type 3)
    i32.const 1028
    call $rbuf_new
    drop)
  (func $teardown_test (type 3)
    i32.const 0
    i32.load offset=1028
    call $rbuf_destroy)
  (func $__original_main (type 2) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 160
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.store offset=156
    call $setup_test
    local.get 0
    call $symbol
    i32.store offset=108
    local.get 0
    local.get 0
    i32.load offset=108
    i32.store8 offset=106
    local.get 0
    i32.const 0
    i32.store8 offset=107
    local.get 0
    call $symbol
    i32.store offset=100
    local.get 0
    local.get 0
    i32.load offset=100
    i32.store8 offset=98
    local.get 0
    i32.const 0
    i32.store8 offset=99
    local.get 0
    call $symbol
    i32.store offset=92
    local.get 0
    local.get 0
    i32.load offset=92
    i32.store8 offset=90
    local.get 0
    i32.const 0
    i32.store8 offset=91
    local.get 0
    call $symbol
    i32.store offset=84
    local.get 0
    local.get 0
    i32.load offset=84
    i32.store8 offset=82
    local.get 0
    i32.const 0
    i32.store8 offset=83
    local.get 0
    call $symbol
    i32.store offset=76
    local.get 0
    local.get 0
    i32.load offset=76
    i32.store8 offset=74
    local.get 0
    i32.const 0
    i32.store8 offset=75
    local.get 0
    call $symbol
    i32.store offset=68
    local.get 0
    local.get 0
    i32.load offset=68
    i32.store8 offset=66
    local.get 0
    i32.const 0
    i32.store8 offset=67
    local.get 0
    call $symbol
    i32.store offset=60
    local.get 0
    local.get 0
    i32.load offset=60
    i32.store8 offset=58
    local.get 0
    i32.const 0
    i32.store8 offset=59
    local.get 0
    call $symbol
    i32.store offset=52
    local.get 0
    local.get 0
    i32.load offset=52
    i32.store8 offset=50
    local.get 0
    i32.const 0
    i32.store8 offset=51
    local.get 0
    call $symbol
    i32.store offset=44
    local.get 0
    local.get 0
    i32.load offset=44
    i32.store8 offset=42
    local.get 0
    i32.const 0
    i32.store8 offset=43
    local.get 0
    call $symbol
    i32.store offset=36
    local.get 0
    local.get 0
    i32.load offset=36
    i32.store8 offset=34
    local.get 0
    i32.const 0
    i32.store8 offset=35
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=108
    call $rbuf_enqueue
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=100
    call $rbuf_enqueue
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=92
    call $rbuf_enqueue
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=84
    call $rbuf_enqueue
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=76
    call $rbuf_enqueue
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=68
    call $rbuf_enqueue
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=60
    call $rbuf_enqueue
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=52
    call $rbuf_enqueue
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=44
    call $rbuf_enqueue
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=36
    call $rbuf_enqueue
    local.get 0
    i32.const 112
    i32.add
    local.tee 1
    i64.const 0
    i64.store
    local.get 1
    i32.const 32
    i32.add
    i64.const 0
    i64.store
    local.get 1
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 1
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 1
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 0
    local.get 0
    i32.load offset=108
    i32.store offset=112
    local.get 0
    local.get 0
    i32.load offset=100
    i32.store offset=116
    local.get 0
    local.get 0
    i32.load offset=92
    i32.store offset=120
    local.get 0
    local.get 0
    i32.load offset=84
    i32.store offset=124
    local.get 0
    local.get 0
    i32.load offset=76
    i32.store offset=128
    local.get 0
    local.get 0
    i32.load offset=68
    i32.store offset=132
    local.get 0
    local.get 0
    i32.load offset=60
    i32.store offset=136
    local.get 0
    local.get 0
    i32.load offset=52
    i32.store offset=140
    local.get 0
    local.get 0
    i32.load offset=44
    i32.store offset=144
    local.get 0
    local.get 0
    i32.load offset=36
    i32.store offset=148
    local.get 0
    i32.load offset=112
    i32.const 0
    i32.load offset=1028
    i32.const 0
    call $rbuf_peek
    i32.eq
    i32.const 1
    i32.and
    call $assert
    local.get 0
    i32.load offset=116
    i32.const 0
    i32.load offset=1028
    i32.const 1
    call $rbuf_peek
    i32.eq
    i32.const 1
    i32.and
    call $assert
    local.get 0
    call $symbol
    i32.store offset=28
    local.get 0
    local.get 0
    i32.load offset=28
    i32.store8 offset=26
    local.get 0
    i32.const 0
    i32.store8 offset=27
    local.get 0
    call $symbol
    i32.store offset=20
    local.get 0
    local.get 0
    i32.load offset=20
    i32.store8 offset=18
    local.get 0
    i32.const 0
    i32.store8 offset=19
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.const 26
    i32.add
    call $rbuf_enqueue
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.const 18
    i32.add
    call $rbuf_enqueue
    i32.const 0
    i32.load offset=1028
    i32.const 0
    call $rbuf_peek
    local.get 0
    i32.const 26
    i32.add
    i32.eq
    i32.const 1
    i32.and
    call $assert
    i32.const 0
    i32.load offset=1028
    i32.const 1
    call $rbuf_peek
    local.get 0
    i32.const 18
    i32.add
    i32.eq
    i32.const 1
    i32.and
    call $assert
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.const 12
    i32.add
    call $rbuf_dequeue
    drop
    local.get 0
    i32.load offset=120
    local.get 0
    i32.load offset=12
    i32.eq
    i32.const 1
    i32.and
    call $assert
    call $teardown_test
    local.get 0
    i32.const 160
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_start (type 3)
    call $__original_main
    drop)
  (func $malloc (type 4) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 0
    i32.load offset=1024
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load offset=4
        local.get 1
        i32.load offset=12
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        i32.load offset=1024
        local.get 1
        i32.load offset=4
        i32.add
        i32.const 105
        i32.store8
        local.get 1
        local.get 1
        i32.load offset=4
        i32.const 1
        i32.add
        i32.store offset=4
        br 0 (;@2;)
      end
    end
    i32.const 0
    i32.const 0
    i32.load offset=1024
    local.get 1
    i32.load offset=12
    i32.add
    i32.store offset=1024
    local.get 1
    i32.load offset=8
    local.get 1
    i32.load offset=12
    call $alloc
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $calloc (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.const 0
    i32.load offset=1024
    i32.store offset=4
    local.get 2
    i32.const 0
    i32.store
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load
        local.get 2
        i32.load offset=12
        local.get 2
        i32.load offset=8
        i32.mul
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        i32.load offset=1024
        local.get 2
        i32.load
        i32.add
        i32.const 0
        i32.store8
        local.get 2
        local.get 2
        i32.load
        i32.const 1
        i32.add
        i32.store
        br 0 (;@2;)
      end
    end
    i32.const 0
    i32.const 0
    i32.load offset=1024
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.mul
    i32.add
    i32.store offset=1024
    local.get 2
    i32.load offset=4
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.mul
    call $alloc
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $free (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    call $dealloc
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $rbuf_new (type 4) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=28
    local.get 1
    i32.const 8
    i32.add
    call $rbuf_conf_init
    local.get 1
    i32.const 8
    i32.add
    local.get 1
    i32.load offset=28
    call $rbuf_conf_new
    local.set 0
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $rbuf_conf_init (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.const 10
    i32.store
    local.get 1
    i32.load offset=12
    i32.const 1
    i32.store offset=4
    local.get 1
    i32.load offset=12
    i32.const 2
    i32.store offset=8
    local.get 1
    i32.load offset=12
    i32.const 3
    i32.store offset=12)
  (func $rbuf_conf_new (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 1
    i32.const 32
    local.get 2
    i32.load offset=8
    i32.load offset=8
    call_indirect (type 0)
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 1
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=8
      i32.load
      i32.const 4
      local.get 2
      i32.load offset=8
      i32.load offset=8
      call_indirect (type 0)
      local.set 0
      local.get 2
      i32.load
      local.get 0
      i32.store offset=16
      block  ;; label = @2
        local.get 0
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.get 2
        i32.load offset=8
        i32.load offset=12
        call_indirect (type 1)
        local.get 2
        i32.const 1
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 2
      i32.load
      local.get 2
      i32.load offset=8
      i32.load offset=4
      i32.store offset=20
      local.get 2
      i32.load
      local.get 2
      i32.load offset=8
      i32.load offset=8
      i32.store offset=24
      local.get 2
      i32.load
      local.get 2
      i32.load offset=8
      i32.load offset=12
      i32.store offset=28
      local.get 2
      i32.load
      local.get 2
      i32.load offset=8
      i32.load
      i32.store offset=4
      local.get 2
      i32.load
      i32.const 0
      i32.store
      local.get 2
      i32.load
      i32.const 0
      i32.store offset=8
      local.get 2
      i32.load
      i32.const 0
      i32.store offset=12
      local.get 2
      i32.load offset=4
      local.get 2
      i32.load
      i32.store
      local.get 2
      i32.const 0
      i32.store offset=12
    end
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $rbuf_destroy (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.load offset=16
    local.get 1
    i32.load offset=12
    i32.load offset=28
    call_indirect (type 1)
    local.get 1
    i32.load offset=12
    local.get 1
    i32.load offset=12
    i32.load offset=28
    call_indirect (type 1)
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $rbuf_is_empty (type 4) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.load
    i32.const 0
    i32.eq
    i32.const 1
    i32.and)
  (func $rbuf_enqueue (type 5) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    block  ;; label = @1
      local.get 2
      i32.load offset=12
      i32.load offset=8
      local.get 2
      i32.load offset=12
      i32.load offset=12
      i32.eq
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=12
      local.get 2
      i32.load offset=12
      i32.load offset=12
      i32.const 1
      i32.add
      local.get 2
      i32.load offset=12
      i32.load offset=4
      i32.rem_u
      i32.store offset=12
    end
    local.get 2
    i32.load offset=12
    i32.load offset=16
    local.get 2
    i32.load offset=12
    i32.load offset=8
    i32.const 2
    i32.shl
    i32.add
    local.get 2
    i32.load offset=8
    i32.store
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=12
    i32.load offset=8
    i32.const 1
    i32.add
    local.get 2
    i32.load offset=12
    i32.load offset=4
    i32.rem_u
    i32.store offset=8
    block  ;; label = @1
      local.get 2
      i32.load offset=12
      i32.load
      local.get 2
      i32.load offset=12
      i32.load offset=4
      i32.lt_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=12
      local.tee 2
      local.get 2
      i32.load
      i32.const 1
      i32.add
      i32.store
    end)
  (func $rbuf_dequeue (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=8
        call $rbuf_is_empty
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 8
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=4
      local.get 2
      i32.load offset=8
      i32.load offset=16
      local.get 2
      i32.load offset=8
      i32.load offset=12
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.store
      local.get 2
      i32.load offset=8
      local.get 2
      i32.load offset=8
      i32.load offset=12
      i32.const 1
      i32.add
      local.get 2
      i32.load offset=8
      i32.load offset=4
      i32.rem_u
      i32.store offset=12
      local.get 2
      i32.load offset=8
      local.tee 0
      local.get 0
      i32.load
      i32.const -1
      i32.add
      i32.store
      local.get 2
      i32.const 0
      i32.store offset=12
    end
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $rbuf_peek (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=12
    i32.load offset=16
    local.get 2
    i32.load offset=8
    i32.const 2
    i32.shl
    i32.add
    i32.load)
  (table (;0;) 4 4 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1049616))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (elem (;0;) (i32.const 1) func $malloc $calloc $free)
  (data $.data (i32.const 1024) "\10\04\10\00"))
