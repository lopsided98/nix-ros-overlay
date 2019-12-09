
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, controller-manager, urdf, std-msgs, catkin, gazebo-ros-control, roscpp, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-gazebo";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_simulations-release/archive/release/kinetic/open_manipulator_gazebo/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "872cf14bc924a6061f0505fe4c8fa13bb3970e7602ac287dbe7624b0dba09328";
  };

  buildType = "catkin";
  buildInputs = [ xacro controller-manager urdf std-msgs gazebo-ros-control roscpp gazebo-ros ];
  propagatedBuildInputs = [ xacro controller-manager urdf std-msgs gazebo-ros-control roscpp gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo configurations package for OpenManipulator'';
    license = with lib.licenses; [ asl20 ];
  };
}
