
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mm-messages, nanomsg, ecl-formatters, ecl-utilities, ecl-command-line, catkin, ecl-threads, ecl-containers, ecl-build, ecl-time, mm-core-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mm-mux-demux";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/message_multiplexing-release/archive/release/kinetic/mm_mux_demux/0.2.4-0.tar.gz;
    sha256 = "c5f36a1d98fe03c310dbd833ba3907ae8f733d68eb19eb1149d5eeff2fea0dae";
  };

  buildInputs = [ mm-messages nanomsg ecl-formatters ecl-utilities ecl-command-line ecl-threads ecl-build ecl-time ecl-containers mm-core-msgs ];
  propagatedBuildInputs = [ mm-messages nanomsg ecl-formatters ecl-utilities ecl-command-line ecl-threads ecl-build ecl-time ecl-containers mm-core-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Multiplexing many packet types across a single connection. Great for embedded connections
   by serial or ethernet types.'';
    #license = lib.licenses.BSD;
  };
}
