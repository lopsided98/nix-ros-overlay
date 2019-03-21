
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, catkin, robotis-math, eigen, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-op3-balance-control";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_balance_control/0.2.1-0.tar.gz;
    sha256 = "5acbf20e7b57df2ee6531c91867030170799964eb75e9eb4accfa68f74a2d9c2";
  };

  propagatedBuildInputs = [ roscpp cmake-modules robotis-math eigen ];
  nativeBuildInputs = [ robotis-math cmake-modules eigen catkin roscpp ];

  meta = {
    description = ''The op3_balance_control package'';
    #license = lib.licenses.Apache 2.0;
  };
}
