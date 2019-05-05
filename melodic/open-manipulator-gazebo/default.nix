
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, catkin, urdf, std-msgs, roscpp, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-gazebo";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator_simulations-release/archive/release/melodic/open_manipulator_gazebo/1.1.0-1.tar.gz;
    sha256 = "1c5055d46fc7e08fce26a98cef9ca8bd79496f0e56aa44de49ff0c3e8675be84";
  };

  buildInputs = [ gazebo-ros controller-manager urdf std-msgs roscpp xacro gazebo-ros-control ];
  propagatedBuildInputs = [ gazebo-ros controller-manager urdf std-msgs roscpp xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo configurations package for OpenManipulator'';
    license = with lib.licenses; [ asl20 ];
  };
}
