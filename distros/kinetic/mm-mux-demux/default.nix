
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-command-line, ecl-containers, ecl-formatters, ecl-threads, ecl-time, ecl-utilities, mm-core-msgs, mm-messages, nanomsg }:
buildRosPackage {
  pname = "ros-kinetic-mm-mux-demux";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/message_multiplexing-release/archive/release/kinetic/mm_mux_demux/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "c5f36a1d98fe03c310dbd833ba3907ae8f733d68eb19eb1149d5eeff2fea0dae";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-build ecl-command-line ecl-containers ecl-formatters ecl-threads ecl-time ecl-utilities mm-core-msgs mm-messages nanomsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Multiplexing many packet types across a single connection. Great for embedded connections
   by serial or ethernet types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
