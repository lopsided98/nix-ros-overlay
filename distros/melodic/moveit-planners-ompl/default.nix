
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, moveit-core, moveit-resources, moveit-ros-planning, ompl, pluginlib, rosconsole, roscpp, rosunit, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-planners-ompl";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_planners_ompl/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "d227e3d845246b39a128d484459933a3ab94de35cd45bf3cf318f68dc0ae1fac";
  };

  buildType = "catkin";
  checkInputs = [ moveit-resources rosunit ];
  propagatedBuildInputs = [ dynamic-reconfigure moveit-core moveit-ros-planning ompl pluginlib rosconsole roscpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt! interface to OMPL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
