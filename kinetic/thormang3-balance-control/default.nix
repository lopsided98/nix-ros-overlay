
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, catkin, robotis-math, eigen, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-balance-control";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_balance_control/0.2.0-0.tar.gz;
    sha256 = "7ef0d95ed8bf11a406fda925cfbf30291cd83763df01ef7322029b5832bb966c";
  };

  buildInputs = [ roscpp cmake-modules robotis-math eigen ];
  propagatedBuildInputs = [ roscpp cmake-modules robotis-math eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thormang3_balance_control package
    This balance control is based on PD control.'';
    #license = lib.licenses.Apache 2.0;
  };
}
