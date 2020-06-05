
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, moveit-core, moveit-kinematics, moveit-resources, moveit-ros-planning, pluginlib, roscpp, rostest, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-move-group";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_move_group/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "dc44ae4e8f512f3d32e4bc83f4cac096b414a2d1d142edb3c51998bd9d26357e";
  };

  buildType = "catkin";
  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ actionlib moveit-core moveit-kinematics moveit-ros-planning pluginlib roscpp std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_group node for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
