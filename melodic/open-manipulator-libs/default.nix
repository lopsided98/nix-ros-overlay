
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-manipulator, cmake-modules, catkin, eigen, roscpp, dynamixel-workbench-toolbox }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-libs";
  version = "2.0.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/melodic/open_manipulator_libs/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "1e026abdb7af7fe42518d35f418754921f3231a328794e8eba9d10ab1bea3b63";
  };

  buildType = "catkin";
  buildInputs = [ robotis-manipulator cmake-modules eigen roscpp dynamixel-workbench-toolbox ];
  propagatedBuildInputs = [ robotis-manipulator cmake-modules eigen roscpp dynamixel-workbench-toolbox ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator library (Kinematics lib., Dynamixel lib., Drawing path lib.)'';
    license = with lib.licenses; [ asl20 ];
  };
}
