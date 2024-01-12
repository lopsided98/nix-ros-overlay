
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros, gazebo-ros-control, roscpp, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-open-manipulator-gazebo";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_simulations-release/archive/release/noetic/open_manipulator_gazebo/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "997691727a0925b8ec1f3fc0cd8d67a2eb5c5ee18b4fc8d15cc5941d6ec026b8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager gazebo-ros gazebo-ros-control roscpp std-msgs urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo configurations package for OpenManipulator'';
    license = with lib.licenses; [ asl20 ];
  };
}
