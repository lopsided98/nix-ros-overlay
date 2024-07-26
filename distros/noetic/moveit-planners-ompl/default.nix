
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, moveit-core, moveit-resources-fanuc-description, moveit-resources-panda-description, moveit-resources-pr2-description, moveit-ros-planning, ompl, pluginlib, rosconsole, roscpp, rostest, rosunit, tf2, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-planners-ompl";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_planners_ompl/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "bac84326534a8b127b262db3dbd661850d135d6ffeeb3d12154a1d85d697fd22";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-resources-fanuc-description moveit-resources-panda-description moveit-resources-pr2-description rostest rosunit tf2-eigen ];
  propagatedBuildInputs = [ dynamic-reconfigure moveit-core moveit-ros-planning ompl pluginlib rosconsole roscpp tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "MoveIt interface to OMPL";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
