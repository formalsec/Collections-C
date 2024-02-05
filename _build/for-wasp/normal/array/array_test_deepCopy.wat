(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (import "symbolic" "i32_symbol" (func $symbol (type 3)))
  (import "symbolic" "assert" (func $assert (type 2)))
  (import "summaries" "alloc" (func $alloc (type 0)))
  (import "summaries" "dealloc" (func $dealloc (type 2)))
  (func $__original_main (type 3) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.store offset=28
    i32.const 1028
    call $array_new
    drop
    local.get 0
    call $symbol
    i32.store offset=24
    local.get 0
    call $symbol
    i32.store offset=20
    local.get 0
    call $symbol
    i32.store offset=16
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.const 24
    i32.add
    call $array_add
    drop
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.const 20
    i32.add
    call $array_add
    drop
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.const 16
    i32.add
    call $array_add
    drop
    i32.const 0
    i32.load offset=1028
    i32.const 1
    i32.const 1032
    call $array_copy_deep
    drop
    i32.const 0
    i32.load offset=1032
    call $array_size
    i32.const 0
    i32.load offset=1028
    call $array_size
    i32.eq
    i32.const 1
    i32.and
    call $assert
    i32.const 0
    i32.load offset=1032
    i32.const 0
    local.get 0
    i32.const 12
    i32.add
    call $array_get_at
    drop
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=12
    i32.load
    i32.eq
    i32.const 1
    i32.and
    call $assert
    i32.const 0
    i32.load offset=1032
    i32.const 2
    call $array_destroy_cb
    i32.const 0
    i32.load offset=1028
    call $array_destroy
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_start (type 4)
    call $__original_main
    drop)
  (func $array_new (type 1) (param i32) (result i32)
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
    call $array_conf_init
    local.get 1
    i32.const 8
    i32.add
    local.get 1
    i32.load offset=28
    call $array_new_conf
    local.set 0
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $array_conf_init (type 2) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    f32.const 0x1p+1 (;=2;)
    f32.store offset=4
    local.get 1
    i32.load offset=12
    i32.const 8
    i32.store
    local.get 1
    i32.load offset=12
    i32.const 3
    i32.store offset=8
    local.get 1
    i32.load offset=12
    i32.const 4
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.const 2
    i32.store offset=16)
  (func $array_new_conf (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 1
    i32.store offset=20
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=24
        f32.load offset=4
        f32.const 0x1p+0 (;=1;)
        f32.le
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        f32.const 0x1p+1 (;=2;)
        f32.store offset=16
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.load offset=24
      f32.load offset=4
      f32.store offset=16
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=24
          i32.load
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          f32.load offset=16
          i32.const 16777216
          local.get 2
          i32.load offset=24
          i32.load
          i32.div_u
          f32.convert_i32_u
          f32.ge
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 2
        i32.const 2
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 2
      i32.const 1
      i32.const 28
      local.get 2
      i32.load offset=24
      i32.load offset=12
      call_indirect (type 0)
      i32.store offset=12
      block  ;; label = @2
        local.get 2
        i32.load offset=12
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 1
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.load offset=24
      i32.load
      i32.const 2
      i32.shl
      local.get 2
      i32.load offset=24
      i32.load offset=8
      call_indirect (type 1)
      i32.store offset=8
      block  ;; label = @2
        local.get 2
        i32.load offset=8
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=12
        local.get 2
        i32.load offset=24
        i32.load offset=16
        call_indirect (type 2)
        local.get 2
        i32.const 1
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=12
      local.get 2
      i32.load offset=8
      i32.store offset=12
      local.get 2
      i32.load offset=12
      local.get 2
      f32.load offset=16
      f32.store offset=8
      local.get 2
      i32.load offset=12
      local.get 2
      i32.load offset=24
      i32.load
      i32.store offset=4
      local.get 2
      i32.load offset=12
      local.get 2
      i32.load offset=24
      i32.load offset=8
      i32.store offset=16
      local.get 2
      i32.load offset=12
      local.get 2
      i32.load offset=24
      i32.load offset=12
      i32.store offset=20
      local.get 2
      i32.load offset=12
      local.get 2
      i32.load offset=24
      i32.load offset=16
      i32.store offset=24
      local.get 2
      i32.load offset=20
      local.get 2
      i32.load offset=12
      i32.store
      local.get 2
      i32.const 0
      i32.store offset=28
    end
    local.get 2
    i32.load offset=28
    local.set 0
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $array_destroy (type 2) (param i32)
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
    i32.load offset=12
    local.get 1
    i32.load offset=12
    i32.load offset=24
    call_indirect (type 2)
    local.get 1
    i32.load offset=12
    local.get 1
    i32.load offset=12
    i32.load offset=24
    call_indirect (type 2)
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $array_destroy_cb (type 5) (param i32 i32)
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
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=4
        local.get 2
        i32.load offset=12
        i32.load
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        i32.load offset=12
        local.get 2
        i32.load offset=4
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.get 2
        i32.load offset=8
        call_indirect (type 2)
        local.get 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.add
        i32.store offset=4
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.load offset=12
    call $array_destroy
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $array_add (type 0) (param i32 i32) (result i32)
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
        i32.load
        local.get 2
        i32.load offset=8
        i32.load offset=4
        i32.ge_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 2
        i32.load offset=8
        call $expand_capacity
        i32.store
        block  ;; label = @3
          local.get 2
          i32.load
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 2
          i32.load
          i32.store offset=12
          br 2 (;@1;)
        end
      end
      local.get 2
      i32.load offset=8
      i32.load offset=12
      local.get 2
      i32.load offset=8
      i32.load
      i32.const 2
      i32.shl
      i32.add
      local.get 2
      i32.load offset=4
      i32.store
      local.get 2
      i32.load offset=8
      local.tee 0
      local.get 0
      i32.load
      i32.const 1
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
  (func $expand_capacity (type 1) (param i32) (result i32)
    (local i32 f32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=8
        i32.load offset=4
        i32.const 16777216
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 4
        i32.store offset=12
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 0
          i32.load offset=4
          f32.convert_i32_u
          local.get 0
          f32.load offset=8
          f32.mul
          local.tee 2
          f32.const 0x1p+32 (;=4.29497e+09;)
          f32.lt
          local.get 2
          f32.const 0x0p+0 (;=0;)
          f32.ge
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.trunc_f32_u
          local.set 0
          br 1 (;@2;)
        end
        i32.const 0
        local.set 0
      end
      local.get 1
      local.get 0
      i32.store offset=4
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.get 1
          i32.load offset=8
          i32.load offset=4
          i32.le_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=8
          i32.const 16777216
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=4
        i32.store offset=4
      end
      local.get 1
      local.get 1
      i32.load offset=4
      i32.const 2
      i32.shl
      local.get 1
      i32.load offset=8
      i32.load offset=16
      call_indirect (type 1)
      i32.store
      block  ;; label = @2
        local.get 1
        i32.load
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.const 1
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 1
      i32.load
      local.get 1
      i32.load offset=8
      i32.load offset=12
      local.get 1
      i32.load offset=8
      i32.load
      i32.const 2
      i32.shl
      call $memcpy
      drop
      local.get 1
      i32.load offset=8
      i32.load offset=12
      local.get 1
      i32.load offset=8
      i32.load offset=24
      call_indirect (type 2)
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load
      i32.store offset=12
      local.get 1
      i32.const 0
      i32.store offset=12
    end
    local.get 1
    i32.load offset=12
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $array_get_at (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    local.get 0
    i32.store offset=8
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 2
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=4
        local.get 3
        i32.load offset=8
        i32.load
        i32.ge_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 8
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 3
      i32.load
      local.get 3
      i32.load offset=8
      i32.load offset=12
      local.get 3
      i32.load offset=4
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.store
      local.get 3
      i32.const 0
      i32.store offset=12
    end
    local.get 3
    i32.load offset=12)
  (func $array_copy_deep (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=20
    local.get 3
    local.get 2
    i32.store offset=16
    local.get 3
    i32.const 28
    local.get 3
    i32.load offset=24
    i32.load offset=16
    call_indirect (type 1)
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=12
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 1
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=24
      i32.load offset=4
      i32.const 4
      local.get 3
      i32.load offset=24
      i32.load offset=20
      call_indirect (type 0)
      local.set 0
      local.get 3
      i32.load offset=12
      local.get 0
      i32.store offset=12
      block  ;; label = @2
        local.get 0
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=12
        local.get 3
        i32.load offset=24
        i32.load offset=24
        call_indirect (type 2)
        local.get 3
        i32.const 1
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=24
      f32.load offset=8
      f32.store offset=8
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=24
      i32.load
      i32.store
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=24
      i32.load offset=4
      i32.store offset=4
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=24
      i32.load offset=16
      i32.store offset=16
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=24
      i32.load offset=20
      i32.store offset=20
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=24
      i32.load offset=24
      i32.store offset=24
      local.get 3
      i32.const 0
      i32.store offset=8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          i32.load
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=24
          i32.load offset=12
          local.get 3
          i32.load offset=8
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.get 3
          i32.load offset=20
          call_indirect (type 1)
          local.set 0
          local.get 3
          i32.load offset=12
          i32.load offset=12
          local.get 3
          i32.load offset=8
          i32.const 2
          i32.shl
          i32.add
          local.get 0
          i32.store
          local.get 3
          local.get 3
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 0 (;@3;)
        end
      end
      local.get 3
      i32.load offset=16
      local.get 3
      i32.load offset=12
      i32.store
      local.get 3
      i32.const 0
      i32.store offset=28
    end
    local.get 3
    i32.load offset=28
    local.set 0
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $array_size (type 1) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.load)
  (func $malloc (type 1) (param i32) (result i32)
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
  (func $free (type 2) (param i32)
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
  (func $memcpy (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    local.get 0
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 2
    i32.store offset=20
    local.get 3
    local.get 3
    i32.load offset=28
    i32.store offset=12
    local.get 3
    local.get 3
    i32.load offset=24
    i32.store offset=8
    block  ;; label = @1
      local.get 3
      i32.load offset=12
      i32.const 0
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=8
      i32.const 0
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 0
      i32.store offset=16
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=16
          local.get 3
          i32.load offset=20
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=12
          local.get 3
          i32.load offset=8
          i32.load8_u
          i32.store8
          local.get 3
          local.get 3
          i32.load offset=16
          i32.const 1
          i32.add
          i32.store offset=16
          local.get 3
          local.get 3
          i32.load offset=12
          i32.const 1
          i32.add
          i32.store offset=12
          local.get 3
          local.get 3
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 0 (;@3;)
        end
      end
    end
    local.get 3
    i32.load offset=28)
  (func $copy (type 1) (param i32) (result i32)
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
    i32.const 4
    call $malloc
    i32.store offset=8
    local.get 1
    i32.load offset=8
    local.get 1
    i32.load offset=12
    i32.load
    i32.store
    local.get 1
    i32.load offset=8
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (table (;0;) 5 5 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1049616))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (elem (;0;) (i32.const 1) func $copy $free $malloc $calloc)
  (data $.data (i32.const 1024) "\10\04\10\00"))
