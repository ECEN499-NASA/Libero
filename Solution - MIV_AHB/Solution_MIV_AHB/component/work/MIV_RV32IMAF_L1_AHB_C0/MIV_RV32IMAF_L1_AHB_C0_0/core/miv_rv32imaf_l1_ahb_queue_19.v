// Copyright (c) 2019, Microchip Corporation
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
// Copyright (c) 2019, Microchip Corporation 
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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_QUEUE_19( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115909.2]
  input        clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115910.4]
  input        reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115911.4]
  input        io_deq_ready, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115912.4]
  output       io_deq_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115912.4]
  output [2:0] io_deq_bits_param, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115912.4]
  output [3:0] io_deq_bits_size, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115912.4]
  output [2:0] io_deq_bits_source // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115912.4]
);
  reg [2:0] ram_param [0:0] /* synthesis syn_ramstyle = "registers" */; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  reg [31:0] _RAND_0;
  wire [2:0] ram_param__T_42_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire  ram_param__T_42_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire [2:0] ram_param__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire  ram_param__T_33_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire  ram_param__T_33_mask; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire  ram_param__T_33_en; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  reg [3:0] ram_size [0:0] /* synthesis syn_ramstyle = "registers" */; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  reg [31:0] _RAND_1;
  wire [3:0] ram_size__T_42_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire  ram_size__T_42_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire [3:0] ram_size__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire  ram_size__T_33_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire  ram_size__T_33_mask; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire  ram_size__T_33_en; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  reg [2:0] ram_source [0:0] /* synthesis syn_ramstyle = "registers" */; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  reg [31:0] _RAND_2;
  wire [2:0] ram_source__T_42_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire  ram_source__T_42_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire [2:0] ram_source__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire  ram_source__T_33_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire  ram_source__T_33_mask; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  wire  ram_source__T_33_en; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  reg  maybe_full; // @[Decoupled.scala 214:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115915.4]
  reg [31:0] _RAND_3;
  wire  empty; // @[Decoupled.scala 217:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115917.4]
  wire  do_deq; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115923.4]
  wire  _GEN_10; // @[Decoupled.scala 229:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115939.4]
  wire  _T_38; // @[Decoupled.scala 233:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115942.4]
  assign ram_param__T_42_addr = 1'h0;
  assign ram_param__T_42_data = ram_param[ram_param__T_42_addr]; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  assign ram_param__T_33_data = 3'h0;
  assign ram_param__T_33_addr = 1'h0;
  assign ram_param__T_33_mask = 1'h0;
  assign ram_param__T_33_en = 1'h0;
  assign ram_size__T_42_addr = 1'h0;
  assign ram_size__T_42_data = ram_size[ram_size__T_42_addr]; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  assign ram_size__T_33_data = 4'h0;
  assign ram_size__T_33_addr = 1'h0;
  assign ram_size__T_33_mask = 1'h0;
  assign ram_size__T_33_en = 1'h0;
  assign ram_source__T_42_addr = 1'h0;
  assign ram_source__T_42_data = ram_source[ram_source__T_42_addr]; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
  assign ram_source__T_33_data = 3'h0;
  assign ram_source__T_33_addr = 1'h0;
  assign ram_source__T_33_mask = 1'h0;
  assign ram_source__T_33_en = 1'h0;
  assign empty = maybe_full == 1'h0; // @[Decoupled.scala 217:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115917.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115923.4]
  assign _GEN_10 = do_deq ? 1'h0 : maybe_full; // @[Decoupled.scala 229:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115939.4]
  assign _T_38 = empty == 1'h0; // @[Decoupled.scala 233:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115942.4]
  assign io_deq_valid = _T_38;
  assign io_deq_bits_param = ram_param__T_42_data;
  assign io_deq_bits_size = ram_size__T_42_data;
  assign io_deq_bits_source = ram_source__T_42_data;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_param[initvar] = _RAND_0[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_size[initvar] = _RAND_1[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_source[initvar] = _RAND_2[2:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  maybe_full = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(ram_param__T_33_en & ram_param__T_33_mask) begin
      ram_param[ram_param__T_33_addr] <= ram_param__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
    end
    if(ram_size__T_33_en & ram_size__T_33_mask) begin
      ram_size[ram_size__T_33_addr] <= ram_size__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
    end
    if(ram_source__T_33_en & ram_source__T_33_mask) begin
      ram_source[ram_source__T_33_addr] <= ram_source__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115914.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else begin
      if (do_deq) begin
        maybe_full <= 1'h0;
      end
    end
  end
endmodule
