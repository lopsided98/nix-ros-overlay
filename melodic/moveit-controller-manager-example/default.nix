
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-controller-manager-example";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_controller_manager_example/1.0.1-0.tar.gz;
    sha256 = "7594ace173bf4c1d41806d16686f371784e37f2169aa655548213b4b44f849a1";
  };

  buildInputs = [ pluginlib roscpp moveit-core ];
  propagatedBuildInputs = [ pluginlib roscpp moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An example controller manager plugin for MoveIt. This is not functional code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
