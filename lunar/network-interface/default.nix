
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, message-generation, message-runtime, std-msgs, rosunit }:
buildRosPackage {
  pname = "ros-lunar-network-interface";
  version = "2.1.0";

  src = fetchurl {
    url = https://github.com/astuff/network_interface-release/archive/release/lunar/network_interface/2.1.0-0.tar.gz;
    sha256 = "7eb29fc72d4d476a5a75b5596b16200655f68a3f38827bcf24563b7637b72ce6";
  };

  buildInputs = [ std-msgs message-generation roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Network interfaces and messages.'';
    #license = lib.licenses.MIT;
  };
}
