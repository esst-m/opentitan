// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package otbn_reg_pkg;

  // Param list
  parameter int NumAlerts = 2;

  // Address widths within the block
  parameter int BlockAw = 16;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////

  typedef struct packed {
    logic        q;
  } otbn_reg2hw_intr_state_reg_t;

  typedef struct packed {
    logic        q;
  } otbn_reg2hw_intr_enable_reg_t;

  typedef struct packed {
    logic        q;
    logic        qe;
  } otbn_reg2hw_intr_test_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } fatal;
    struct packed {
      logic        q;
      logic        qe;
    } recov;
  } otbn_reg2hw_alert_test_reg_t;

  typedef struct packed {
    logic        q;
    logic        qe;
  } otbn_reg2hw_cmd_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } otbn_reg2hw_start_addr_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } dmem;
    struct packed {
      logic        q;
    } imem;
  } otbn_reg2hw_sec_wipe_reg_t;

  typedef struct packed {
    logic        d;
    logic        de;
  } otbn_hw2reg_intr_state_reg_t;

  typedef struct packed {
    logic        d;
  } otbn_hw2reg_status_reg_t;

  typedef struct packed {
    struct packed {
      logic        d;
      logic        de;
    } bad_data_addr;
    struct packed {
      logic        d;
      logic        de;
    } bad_insn_addr;
    struct packed {
      logic        d;
      logic        de;
    } call_stack;
    struct packed {
      logic        d;
      logic        de;
    } illegal_insn;
    struct packed {
      logic        d;
      logic        de;
    } loop;
    struct packed {
      logic        d;
      logic        de;
    } fatal_imem;
    struct packed {
      logic        d;
      logic        de;
    } fatal_dmem;
    struct packed {
      logic        d;
      logic        de;
    } fatal_reg;
    struct packed {
      logic        d;
      logic        de;
    } fatal_illegal_bus_access;
  } otbn_hw2reg_err_bits_reg_t;

  typedef struct packed {
    struct packed {
      logic        d;
      logic        de;
    } bus_integrity_error;
    struct packed {
      logic        d;
      logic        de;
    } imem_error;
    struct packed {
      logic        d;
      logic        de;
    } dmem_error;
    struct packed {
      logic        d;
      logic        de;
    } reg_error;
    struct packed {
      logic        d;
      logic        de;
    } illegal_bus_access;
  } otbn_hw2reg_fatal_alert_cause_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } otbn_hw2reg_insn_cnt_reg_t;

  // Register -> HW type
  typedef struct packed {
    otbn_reg2hw_intr_state_reg_t intr_state; // [43:43]
    otbn_reg2hw_intr_enable_reg_t intr_enable; // [42:42]
    otbn_reg2hw_intr_test_reg_t intr_test; // [41:40]
    otbn_reg2hw_alert_test_reg_t alert_test; // [39:36]
    otbn_reg2hw_cmd_reg_t cmd; // [35:34]
    otbn_reg2hw_start_addr_reg_t start_addr; // [33:2]
    otbn_reg2hw_sec_wipe_reg_t sec_wipe; // [1:0]
  } otbn_reg2hw_t;

  // HW -> register type
  typedef struct packed {
    otbn_hw2reg_intr_state_reg_t intr_state; // [62:61]
    otbn_hw2reg_status_reg_t status; // [60:60]
    otbn_hw2reg_err_bits_reg_t err_bits; // [59:42]
    otbn_hw2reg_fatal_alert_cause_reg_t fatal_alert_cause; // [41:32]
    otbn_hw2reg_insn_cnt_reg_t insn_cnt; // [31:0]
  } otbn_hw2reg_t;

  // Register offsets
  parameter logic [BlockAw-1:0] OTBN_INTR_STATE_OFFSET = 16'h 0;
  parameter logic [BlockAw-1:0] OTBN_INTR_ENABLE_OFFSET = 16'h 4;
  parameter logic [BlockAw-1:0] OTBN_INTR_TEST_OFFSET = 16'h 8;
  parameter logic [BlockAw-1:0] OTBN_ALERT_TEST_OFFSET = 16'h c;
  parameter logic [BlockAw-1:0] OTBN_CMD_OFFSET = 16'h 10;
  parameter logic [BlockAw-1:0] OTBN_STATUS_OFFSET = 16'h 14;
  parameter logic [BlockAw-1:0] OTBN_ERR_BITS_OFFSET = 16'h 18;
  parameter logic [BlockAw-1:0] OTBN_START_ADDR_OFFSET = 16'h 1c;
  parameter logic [BlockAw-1:0] OTBN_FATAL_ALERT_CAUSE_OFFSET = 16'h 20;
  parameter logic [BlockAw-1:0] OTBN_SEC_WIPE_OFFSET = 16'h 24;
  parameter logic [BlockAw-1:0] OTBN_INSN_CNT_OFFSET = 16'h 28;

  // Reset values for hwext registers and their fields
  parameter logic [0:0] OTBN_INTR_TEST_RESVAL = 1'h 0;
  parameter logic [0:0] OTBN_INTR_TEST_DONE_RESVAL = 1'h 0;
  parameter logic [1:0] OTBN_ALERT_TEST_RESVAL = 2'h 0;
  parameter logic [0:0] OTBN_ALERT_TEST_FATAL_RESVAL = 1'h 0;
  parameter logic [0:0] OTBN_ALERT_TEST_RECOV_RESVAL = 1'h 0;
  parameter logic [0:0] OTBN_CMD_RESVAL = 1'h 0;
  parameter logic [0:0] OTBN_STATUS_RESVAL = 1'h 0;
  parameter logic [31:0] OTBN_INSN_CNT_RESVAL = 32'h 0;
  parameter logic [31:0] OTBN_INSN_CNT_INSN_CNT_RESVAL = 32'h 0;

  // Window parameters
  parameter logic [BlockAw-1:0] OTBN_IMEM_OFFSET = 16'h 4000;
  parameter int unsigned        OTBN_IMEM_SIZE   = 'h 1000;
  parameter logic [BlockAw-1:0] OTBN_DMEM_OFFSET = 16'h 8000;
  parameter int unsigned        OTBN_DMEM_SIZE   = 'h 1000;

  // Register index
  typedef enum int {
    OTBN_INTR_STATE,
    OTBN_INTR_ENABLE,
    OTBN_INTR_TEST,
    OTBN_ALERT_TEST,
    OTBN_CMD,
    OTBN_STATUS,
    OTBN_ERR_BITS,
    OTBN_START_ADDR,
    OTBN_FATAL_ALERT_CAUSE,
    OTBN_SEC_WIPE,
    OTBN_INSN_CNT
  } otbn_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] OTBN_PERMIT [11] = '{
    4'b 0001, // index[ 0] OTBN_INTR_STATE
    4'b 0001, // index[ 1] OTBN_INTR_ENABLE
    4'b 0001, // index[ 2] OTBN_INTR_TEST
    4'b 0001, // index[ 3] OTBN_ALERT_TEST
    4'b 0001, // index[ 4] OTBN_CMD
    4'b 0001, // index[ 5] OTBN_STATUS
    4'b 0011, // index[ 6] OTBN_ERR_BITS
    4'b 1111, // index[ 7] OTBN_START_ADDR
    4'b 0001, // index[ 8] OTBN_FATAL_ALERT_CAUSE
    4'b 0001, // index[ 9] OTBN_SEC_WIPE
    4'b 1111  // index[10] OTBN_INSN_CNT
  };

endpackage

