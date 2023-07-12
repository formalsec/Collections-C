(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32)))
  (type (;6;) (func (param i32 i32)))
  (import "symbolic" "i32_symbol" (func $symbol (type 2)))
  (import "symbolic" "assert" (func $assert (type 1)))
  (import "summaries" "alloc" (func $alloc (type 0)))
  (import "summaries" "dealloc" (func $dealloc (type 1)))
  (func $setup_tests (type 3)
    i32.const 1028
    call $list_new
    drop
    i32.const 1032
    call $list_new
    drop)
  (func $teardown_test (type 3)
    i32.const 0
    i32.load offset=1028
    call $list_destroy
    i32.const 0
    i32.load offset=1032
    call $list_destroy)
  (func $__original_main (type 2) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.store offset=44
    call $setup_tests
    local.get 0
    call $symbol
    i32.store offset=40
    local.get 0
    call $symbol
    i32.store offset=36
    local.get 0
    call $symbol
    i32.store offset=32
    local.get 0
    call $symbol
    i32.store offset=28
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.const 40
    i32.add
    call $list_add
    drop
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.const 36
    i32.add
    call $list_add
    drop
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.const 32
    i32.add
    call $list_add
    drop
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.const 28
    i32.add
    call $list_add
    drop
    i32.const 0
    i32.load offset=1028
    i32.const 1
    call $list_sort
    drop
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    i32.load offset=1028
    call $list_iter_init
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 4
    i32.add
    call $list_iter_next
    drop
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        call $list_iter_next
        i32.const 9
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        i32.load
        local.get 0
        i32.load
        i32.load
        i32.le_s
        i32.const 1
        i32.and
        call $assert
        local.get 0
        local.get 0
        i32.load
        i32.store offset=4
        br 0 (;@2;)
      end
    end
    call $teardown_test
    local.get 0
    i32.load offset=44
    local.set 1
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $cmp (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 1
    i32.store offset=20
    local.get 2
    local.get 2
    i32.load offset=24
    i32.load
    i32.load
    i32.store offset=16
    local.get 2
    local.get 2
    i32.load offset=20
    i32.load
    i32.load
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=12
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const -1
        i32.store offset=28
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=12
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 0
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 2
      i32.const 1
      i32.store offset=28
    end
    local.get 2
    i32.load offset=28)
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
  (func $qsort (type 5) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=44
    local.get 4
    local.get 1
    i32.store offset=40
    local.get 4
    local.get 2
    i32.store offset=36
    local.get 4
    local.get 3
    i32.store offset=32
    local.get 4
    local.get 4
    i32.load offset=44
    i32.store offset=16
    local.get 4
    local.get 4
    i32.load offset=16
    i32.store offset=12
    local.get 4
    i32.const 0
    i32.store offset=28
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=28
        local.get 4
        i32.load offset=40
        i32.const 1
        i32.sub
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 4
        i32.load offset=28
        i32.store offset=20
        local.get 4
        local.get 4
        i32.load offset=28
        i32.const 1
        i32.add
        i32.store offset=24
        block  ;; label = @3
          loop  ;; label = @4
            local.get 4
            i32.load offset=24
            local.get 4
            i32.load offset=40
            i32.lt_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 4
              i32.load offset=12
              local.get 4
              i32.load offset=24
              local.get 4
              i32.load offset=36
              i32.mul
              i32.add
              local.get 4
              i32.load offset=12
              local.get 4
              i32.load offset=20
              local.get 4
              i32.load offset=36
              i32.mul
              i32.add
              local.get 4
              i32.load offset=32
              call_indirect (type 0)
              i32.const 0
              i32.lt_s
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              local.get 4
              i32.load offset=24
              i32.store offset=20
            end
            local.get 4
            local.get 4
            i32.load offset=24
            i32.const 1
            i32.add
            i32.store offset=24
            br 0 (;@4;)
          end
        end
        local.get 4
        local.get 4
        i32.load offset=12
        local.get 4
        i32.load offset=20
        local.get 4
        i32.load offset=36
        i32.mul
        i32.add
        i32.store offset=8
        local.get 4
        local.get 4
        i32.load offset=12
        local.get 4
        i32.load offset=28
        local.get 4
        i32.load offset=36
        i32.mul
        i32.add
        i32.store offset=4
        local.get 4
        local.get 4
        i32.load offset=8
        i32.load
        i32.store
        local.get 4
        i32.load offset=8
        local.get 4
        i32.load offset=4
        i32.load
        i32.store
        local.get 4
        i32.load offset=4
        local.get 4
        i32.load
        i32.store
        local.get 4
        local.get 4
        i32.load offset=28
        i32.const 1
        i32.add
        i32.store offset=28
        br 0 (;@2;)
      end
    end
    local.get 4
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $list_conf_init (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.const 2
    i32.store
    local.get 1
    i32.load offset=12
    i32.const 3
    i32.store offset=4
    local.get 1
    i32.load offset=12
    i32.const 4
    i32.store offset=8)
  (func $list_new (type 4) (param i32) (result i32)
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
    call $list_conf_init
    local.get 1
    local.get 1
    i32.load offset=12
    call $list_new_conf
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $list_new_conf (type 0) (param i32 i32) (result i32)
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
    i32.const 24
    local.get 2
    i32.load offset=8
    i32.load offset=4
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
      i32.load
      local.get 2
      i32.load offset=8
      i32.load
      i32.store offset=12
      local.get 2
      i32.load
      local.get 2
      i32.load offset=8
      i32.load offset=4
      i32.store offset=16
      local.get 2
      i32.load
      local.get 2
      i32.load offset=8
      i32.load offset=8
      i32.store offset=20
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
  (func $list_destroy (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    block  ;; label = @1
      local.get 1
      i32.load offset=12
      i32.load
      i32.const 0
      i32.gt_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      call $list_remove_all
      drop
    end
    local.get 1
    i32.load offset=12
    local.get 1
    i32.load offset=12
    i32.load offset=20
    call_indirect (type 1)
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $list_remove_all (type 4) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    local.get 1
    i32.load offset=8
    i32.const 0
    call $unlinkn_all
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=8
        i32.const 0
        i32.store offset=4
        local.get 1
        i32.load offset=8
        i32.const 0
        i32.store offset=8
        local.get 1
        i32.const 0
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 1
      i32.const 7
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
  (func $unlinkn_all (type 0) (param i32 i32) (result i32)
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
        i32.load
        br_if 0 (;@2;)
        local.get 2
        i32.const 0
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.load offset=24
      i32.load offset=4
      i32.store offset=16
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.load offset=16
          i32.const 0
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          local.get 2
          i32.load offset=16
          i32.load offset=4
          i32.store offset=12
          block  ;; label = @4
            local.get 2
            i32.load offset=20
            i32.const 0
            i32.ne
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.load offset=16
            i32.load
            local.get 2
            i32.load offset=20
            call_indirect (type 1)
          end
          local.get 2
          i32.load offset=24
          local.get 2
          i32.load offset=16
          call $unlinkn
          drop
          local.get 2
          local.get 2
          i32.load offset=12
          i32.store offset=16
          br 0 (;@3;)
        end
      end
      local.get 2
      i32.const 1
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
  (func $list_add (type 0) (param i32 i32) (result i32)
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
    i32.load offset=12
    local.get 2
    i32.load offset=8
    call $list_add_last
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $list_add_last (type 0) (param i32 i32) (result i32)
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
    i32.const 12
    local.get 2
    i32.load offset=8
    i32.load offset=16
    call_indirect (type 0)
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load
        i32.const 0
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 1
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 2
      i32.load
      local.get 2
      i32.load offset=4
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=8
          i32.load
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=8
          local.get 2
          i32.load
          i32.store offset=4
          local.get 2
          i32.load offset=8
          local.get 2
          i32.load
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 2
        i32.load
        local.get 2
        i32.load offset=8
        i32.load offset=8
        i32.store offset=8
        local.get 2
        i32.load offset=8
        i32.load offset=8
        local.get 2
        i32.load
        i32.store offset=4
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load
        i32.store offset=8
      end
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
  (func $unlinkn (type 0) (param i32 i32) (result i32)
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
    local.get 2
    i32.load offset=8
    i32.load
    i32.store offset=4
    block  ;; label = @1
      local.get 2
      i32.load offset=8
      i32.load offset=8
      i32.const 0
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=8
      i32.load offset=8
      local.get 2
      i32.load offset=8
      i32.load offset=4
      i32.store offset=4
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=8
      i32.load offset=8
      i32.const 0
      i32.eq
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=12
      local.get 2
      i32.load offset=8
      i32.load offset=4
      i32.store offset=4
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=8
      i32.load offset=4
      i32.const 0
      i32.eq
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=12
      local.get 2
      i32.load offset=8
      i32.load offset=8
      i32.store offset=8
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=8
      i32.load offset=4
      i32.const 0
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=8
      i32.load offset=4
      local.get 2
      i32.load offset=8
      i32.load offset=8
      i32.store offset=8
    end
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    i32.load offset=20
    call_indirect (type 1)
    local.get 2
    i32.load offset=12
    local.tee 0
    local.get 0
    i32.load
    i32.const -1
    i32.add
    i32.store
    local.get 2
    i32.load offset=4
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $list_to_array (type 0) (param i32 i32) (result i32)
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
        i32.load
        br_if 0 (;@2;)
        local.get 2
        i32.const 3
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.load offset=24
      i32.load
      i32.const 4
      local.get 2
      i32.load offset=24
      i32.load offset=16
      call_indirect (type 0)
      i32.store offset=16
      block  ;; label = @2
        local.get 2
        i32.load offset=16
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
      i32.load offset=4
      i32.store offset=12
      local.get 2
      i32.const 0
      i32.store offset=8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.load offset=8
          local.get 2
          i32.load offset=24
          i32.load
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.load offset=16
          local.get 2
          i32.load offset=8
          i32.const 2
          i32.shl
          i32.add
          local.get 2
          i32.load offset=12
          i32.load
          i32.store
          local.get 2
          local.get 2
          i32.load offset=12
          i32.load offset=4
          i32.store offset=12
          local.get 2
          local.get 2
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 0 (;@3;)
        end
      end
      local.get 2
      i32.load offset=20
      local.get 2
      i32.load offset=16
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
  (func $list_sort (type 0) (param i32 i32) (result i32)
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
    local.get 2
    local.get 2
    i32.load offset=24
    local.get 2
    i32.const 16
    i32.add
    call $list_to_array
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=12
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 2
        i32.load offset=12
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.load offset=24
      i32.load offset=4
      i32.store offset=8
      local.get 2
      i32.load offset=16
      local.get 2
      i32.load offset=24
      i32.load
      i32.const 4
      local.get 2
      i32.load offset=20
      call $qsort
      local.get 2
      i32.const 0
      i32.store offset=4
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.load offset=4
          local.get 2
          i32.load offset=24
          i32.load
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.load offset=8
          local.get 2
          i32.load offset=16
          local.get 2
          i32.load offset=4
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.store
          local.get 2
          local.get 2
          i32.load offset=8
          i32.load offset=4
          i32.store offset=8
          local.get 2
          local.get 2
          i32.load offset=4
          i32.const 1
          i32.add
          i32.store offset=4
          br 0 (;@3;)
        end
      end
      local.get 2
      i32.load offset=16
      local.get 2
      i32.load offset=24
      i32.load offset=20
      call_indirect (type 1)
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
  (func $list_iter_init (type 6) (param i32 i32)
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
    i32.const 0
    i32.store
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.store offset=4
    local.get 2
    i32.load offset=12
    i32.const 0
    i32.store offset=8
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.load offset=4
    i32.store offset=12)
  (func $list_iter_next (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=8
        i32.load offset=12
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 9
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.load offset=8
      i32.load offset=12
      i32.load
      i32.store
      local.get 2
      i32.load offset=8
      local.get 2
      i32.load offset=8
      i32.load offset=12
      i32.store offset=8
      local.get 2
      i32.load offset=8
      local.get 2
      i32.load offset=8
      i32.load offset=12
      i32.load offset=4
      i32.store offset=12
      local.get 2
      i32.load offset=8
      local.tee 0
      local.get 0
      i32.load
      i32.const 1
      i32.add
      i32.store
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
    i32.load offset=12)
  (table (;0;) 5 5 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1049616))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (elem (;0;) (i32.const 1) func $cmp $malloc $calloc $free)
  (data $.data (i32.const 1024) "\10\04\10\00"))
