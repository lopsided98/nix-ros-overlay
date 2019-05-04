
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, actionlib-msgs, pcl, catkin, roscpp, move-base-msgs, message-generation, message-runtime, visualization-msgs, actionlib, std-msgs, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-frontier-exploration";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/paulbovbel/frontier_exploration-release/archive/release/kinetic/frontier_exploration/0.3.1-0.tar.gz;
    sha256 = "e8a0a4a49987f30897611c7e0d8edc76ab63e82a607db095a6fc5aa2633c4e22";
  };

  buildInputs = [ costmap-2d actionlib-msgs pcl roscpp move-base-msgs message-generation actionlib visualization-msgs dynamic-reconfigure std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d actionlib-msgs pcl roscpp move-base-msgs actionlib message-runtime visualization-msgs dynamic-reconfigure std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of <a href="http://www.robotfrontier.com/papers/cira97.pdf">frontier exploration</a> for ROS, extending on the existing navigation stack (costmap_2d, move_base).
  It accepts exploration goals via <a href="http://www.ros.org/wiki/actionlib">actionlib</a> (Rviz UI provided), sends movement commands to <a href="http://www.ros.org/wiki/move_base">move_base</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
