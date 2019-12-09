
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time, ecl-formatters, mm-core-msgs, catkin, ecl-utilities, ecl-containers, ecl-command-line, nanomsg, ecl-threads, ecl-build, mm-messages }:
buildRosPackage {
  pname = "ros-kinetic-mm-mux-demux";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/message_multiplexing-release/archive/release/kinetic/mm_mux_demux/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "c5f36a1d98fe03c310dbd833ba3907ae8f733d68eb19eb1149d5eeff2fea0dae";
  };

  buildType = "catkin";
  buildInputs = [ ecl-time ecl-formatters mm-core-msgs ecl-utilities ecl-containers ecl-command-line nanomsg ecl-threads ecl-build mm-messages ];
  propagatedBuildInputs = [ ecl-time ecl-formatters mm-core-msgs ecl-utilities ecl-containers ecl-command-line nanomsg ecl-threads ecl-build mm-messages ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Multiplexing many packet types across a single connection. Great for embedded connections
   by serial or ethernet types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
