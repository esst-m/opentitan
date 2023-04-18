// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// DO NOT EDIT THIS FILE DIRECTLY.
//
// It has been generated with:
// $ ./util/design/gen-lc-state-enc.py
//     --seed ${lc_st_enc.config['seed']}
//     --raw-unlock-rs-template=sw/device/silicon_creator/manuf/data/lc_raw_unlock_token.rs.tpl

#![allow(dead_code)]

//! LC unlock tokens embedded in the HW as netlist constants.

% for token in lc_st_enc.config['tokens']:
pub const ${token['name']}: u128 = 0x${"{0:0X}".format(token['value'])};
% endfor