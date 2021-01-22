
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamixel-workbench-toolbox, eigen, robotis-manipulator, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-p-libs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p-release/archive/release/kinetic/open_manipulator_p_libs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7a489005fe5b5ca0f9dd6dbe1f31ec51b20a840f2ed0841f37c76400b79bbbb7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules dynamixel-workbench-toolbox eigen robotis-manipulator roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P libraries'';
    license = with lib.licenses; [ asl20 ];
  };
}
