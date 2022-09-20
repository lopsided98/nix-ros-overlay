
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, moveit-core, moveit-resources-pr2-description, moveit-ros-planning, ompl, pluginlib, rosconsole, roscpp, rosunit, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-planners-ompl";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_planners_ompl/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "f593ac31c079e14c793684fe1d09b536b17b63e6959bf2eca05829973c8dd18a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-resources-pr2-description rosunit ];
  propagatedBuildInputs = [ dynamic-reconfigure moveit-core moveit-ros-planning ompl pluginlib rosconsole roscpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt! interface to OMPL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
