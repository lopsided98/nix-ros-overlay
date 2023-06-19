
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, moveit-core, moveit-resources-fanuc-description, moveit-resources-panda-description, moveit-resources-pr2-description, moveit-ros-planning, ompl, pluginlib, rosconsole, roscpp, rostest, rosunit, tf2, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-planners-ompl";
  version = "1.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_planners_ompl/1.1.12-1.tar.gz";
    name = "1.1.12-1.tar.gz";
    sha256 = "5df31783cf14f5de8ab083b7ac1d7a366fd5c8e0be15e0d80b2c2edf759e5527";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-resources-fanuc-description moveit-resources-panda-description moveit-resources-pr2-description rostest rosunit tf2-eigen ];
  propagatedBuildInputs = [ dynamic-reconfigure moveit-core moveit-ros-planning ompl pluginlib rosconsole roscpp tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt interface to OMPL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
