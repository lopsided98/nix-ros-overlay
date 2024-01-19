
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros, gazebo-ros-control, roscpp, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-open-manipulator-p-gazebo";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release/archive/release/noetic/open_manipulator_p_gazebo/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "3acbf35cfbf201c8008cea6a70e4444a03c8f0f12bbae911a5f601cee074a62e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager gazebo-ros gazebo-ros-control roscpp std-msgs urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P Gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
