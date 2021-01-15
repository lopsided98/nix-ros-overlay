
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros, gazebo-ros-control, roscpp, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-p-gazebo";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release/archive/release/kinetic/open_manipulator_p_gazebo/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "8609d0ca9e0c3adbfa46d8f2cc79eed02cf7ecf1965d124ceed5d9e56dfda386";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager gazebo-ros gazebo-ros-control roscpp std-msgs urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P Gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
