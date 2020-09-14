
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-controller-manager-example";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_controller_manager_example/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "eae7b5dfa5e3e3416c0bd232fec10e1328fe84c93d2b4b0f8066416071bbecbd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An example controller manager plugin for MoveIt. This is not functional code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
