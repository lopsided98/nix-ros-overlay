
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamixel-workbench-toolbox, eigen, robotis-manipulator, roscpp }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-p-libs";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p-release/archive/release/melodic/open_manipulator_p_libs/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "cbc307680c10c285fe2837be8743da49a6bda7b41723e57db389fe977611698c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules dynamixel-workbench-toolbox eigen robotis-manipulator roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P libraries'';
    license = with lib.licenses; [ asl20 ];
  };
}
