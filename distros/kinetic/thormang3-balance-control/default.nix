
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, robotis-math, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-balance-control";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_balance_control/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "7ef0d95ed8bf11a406fda925cfbf30291cd83763df01ef7322029b5832bb966c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules eigen robotis-math roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thormang3_balance_control package
    This balance control is based on PD control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
