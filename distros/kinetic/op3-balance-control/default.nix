
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, robotis-math, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-op3-balance-control";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_balance_control/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "5acbf20e7b57df2ee6531c91867030170799964eb75e9eb4accfa68f74a2d9c2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules eigen robotis-math roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_balance_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
