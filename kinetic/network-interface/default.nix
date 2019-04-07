
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, message-generation, message-runtime, std-msgs, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-network-interface";
  version = "2.1.0";

  src = fetchurl {
    url = https://github.com/astuff/network_interface-release/archive/release/kinetic/network_interface/2.1.0-0.tar.gz;
    sha256 = "ee4826ed8fa164d3473409bd9bb1f15b0af0d785fd7f7f5dfaae24d28cad4060";
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
