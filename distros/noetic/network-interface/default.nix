
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roslint, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-network-interface";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/network_interface-release/archive/release/noetic/network_interface/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "6ba8757292ea0ae9499c9142cf2b47cac91ac0f5f2ffd21c977801657ae38d64";
  };

  buildType = "catkin";
  buildInputs = [ message-generation roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Network interfaces and messages.'';
    license = with lib.licenses; [ mit ];
  };
}
