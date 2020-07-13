// Copyright (c) 2017, Microsemi Corporation
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL MICROSEMI CORPORATIONM BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// APACHE LICENSE
// Copyright (c) 2017, Microsemi Corporation 
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Description:
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`ifndef RANDOMIZE_REG_INIT 
	 `define RANDOMIZE_REG_INIT 
 `endif
`ifndef RANDOMIZE_MEM_INIT 
	 `define RANDOMIZE_MEM_INIT 
 `endif
`ifndef RANDOMIZE 
	 `define RANDOMIZE 
`endif

`timescale 1ns/10ps
module MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_TLBUFFER_PERIPHERY_BUS_SLAVE_TLBUFFER( // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3107.2]
  output        auto_in_2_a_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_in_2_a_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_in_2_a_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_in_2_a_bits_size, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_in_2_a_bits_source, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [11:0] auto_in_2_a_bits_address, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [3:0]  auto_in_2_a_bits_mask, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [31:0] auto_in_2_a_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_in_2_d_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output        auto_in_2_d_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_in_2_d_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_in_2_d_bits_size, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_in_2_d_bits_source, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [31:0] auto_in_2_d_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output        auto_in_2_d_bits_error, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output        auto_in_1_a_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_in_1_a_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_in_1_a_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_in_1_a_bits_size, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_in_1_a_bits_source, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [30:0] auto_in_1_a_bits_address, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [3:0]  auto_in_1_a_bits_mask, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [31:0] auto_in_1_a_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_in_1_d_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output        auto_in_1_d_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_in_1_d_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_in_1_d_bits_size, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_in_1_d_bits_source, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [31:0] auto_in_1_d_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output        auto_in_1_d_bits_error, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output        auto_in_0_a_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_in_0_a_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_in_0_a_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_in_0_a_bits_size, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_in_0_a_bits_source, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [30:0] auto_in_0_a_bits_address, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [3:0]  auto_in_0_a_bits_mask, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [31:0] auto_in_0_a_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_in_0_d_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output        auto_in_0_d_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_in_0_d_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_in_0_d_bits_size, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_in_0_d_bits_source, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [31:0] auto_in_0_d_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output        auto_in_0_d_bits_error, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_out_2_a_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output        auto_out_2_a_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_out_2_a_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_out_2_a_bits_size, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_out_2_a_bits_source, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [11:0] auto_out_2_a_bits_address, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [3:0]  auto_out_2_a_bits_mask, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [31:0] auto_out_2_a_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output        auto_out_2_d_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_out_2_d_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_out_2_d_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_out_2_d_bits_size, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_out_2_d_bits_source, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [31:0] auto_out_2_d_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_out_2_d_bits_error, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_out_1_a_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output        auto_out_1_a_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_out_1_a_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_out_1_a_bits_size, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_out_1_a_bits_source, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [30:0] auto_out_1_a_bits_address, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [3:0]  auto_out_1_a_bits_mask, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [31:0] auto_out_1_a_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output        auto_out_1_d_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_out_1_d_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_out_1_d_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_out_1_d_bits_size, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_out_1_d_bits_source, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [31:0] auto_out_1_d_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_out_1_d_bits_error, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_out_0_a_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output        auto_out_0_a_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_out_0_a_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_out_0_a_bits_size, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [2:0]  auto_out_0_a_bits_source, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [30:0] auto_out_0_a_bits_address, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [3:0]  auto_out_0_a_bits_mask, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output [31:0] auto_out_0_a_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  output        auto_out_0_d_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_out_0_d_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_out_0_d_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_out_0_d_bits_size, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [2:0]  auto_out_0_d_bits_source, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input  [31:0] auto_out_0_d_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
  input         auto_out_0_d_bits_error // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@3110.4]
);
  assign auto_in_2_a_ready = auto_out_2_a_ready;
  assign auto_in_2_d_valid = auto_out_2_d_valid;
  assign auto_in_2_d_bits_opcode = auto_out_2_d_bits_opcode;
  assign auto_in_2_d_bits_size = auto_out_2_d_bits_size;
  assign auto_in_2_d_bits_source = auto_out_2_d_bits_source;
  assign auto_in_2_d_bits_data = auto_out_2_d_bits_data;
  assign auto_in_2_d_bits_error = auto_out_2_d_bits_error;
  assign auto_in_1_a_ready = auto_out_1_a_ready;
  assign auto_in_1_d_valid = auto_out_1_d_valid;
  assign auto_in_1_d_bits_opcode = auto_out_1_d_bits_opcode;
  assign auto_in_1_d_bits_size = auto_out_1_d_bits_size;
  assign auto_in_1_d_bits_source = auto_out_1_d_bits_source;
  assign auto_in_1_d_bits_data = auto_out_1_d_bits_data;
  assign auto_in_1_d_bits_error = auto_out_1_d_bits_error;
  assign auto_in_0_a_ready = auto_out_0_a_ready;
  assign auto_in_0_d_valid = auto_out_0_d_valid;
  assign auto_in_0_d_bits_opcode = auto_out_0_d_bits_opcode;
  assign auto_in_0_d_bits_size = auto_out_0_d_bits_size;
  assign auto_in_0_d_bits_source = auto_out_0_d_bits_source;
  assign auto_in_0_d_bits_data = auto_out_0_d_bits_data;
  assign auto_in_0_d_bits_error = auto_out_0_d_bits_error;
  assign auto_out_2_a_valid = auto_in_2_a_valid;
  assign auto_out_2_a_bits_opcode = auto_in_2_a_bits_opcode;
  assign auto_out_2_a_bits_size = auto_in_2_a_bits_size;
  assign auto_out_2_a_bits_source = auto_in_2_a_bits_source;
  assign auto_out_2_a_bits_address = auto_in_2_a_bits_address;
  assign auto_out_2_a_bits_mask = auto_in_2_a_bits_mask;
  assign auto_out_2_a_bits_data = auto_in_2_a_bits_data;
  assign auto_out_2_d_ready = auto_in_2_d_ready;
  assign auto_out_1_a_valid = auto_in_1_a_valid;
  assign auto_out_1_a_bits_opcode = auto_in_1_a_bits_opcode;
  assign auto_out_1_a_bits_size = auto_in_1_a_bits_size;
  assign auto_out_1_a_bits_source = auto_in_1_a_bits_source;
  assign auto_out_1_a_bits_address = auto_in_1_a_bits_address;
  assign auto_out_1_a_bits_mask = auto_in_1_a_bits_mask;
  assign auto_out_1_a_bits_data = auto_in_1_a_bits_data;
  assign auto_out_1_d_ready = auto_in_1_d_ready;
  assign auto_out_0_a_valid = auto_in_0_a_valid;
  assign auto_out_0_a_bits_opcode = auto_in_0_a_bits_opcode;
  assign auto_out_0_a_bits_size = auto_in_0_a_bits_size;
  assign auto_out_0_a_bits_source = auto_in_0_a_bits_source;
  assign auto_out_0_a_bits_address = auto_in_0_a_bits_address;
  assign auto_out_0_a_bits_mask = auto_in_0_a_bits_mask;
  assign auto_out_0_a_bits_data = auto_in_0_a_bits_data;
  assign auto_out_0_d_ready = auto_in_0_d_ready;
endmodule
