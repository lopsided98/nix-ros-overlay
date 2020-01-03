
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp-tutorials, rospy-tutorials, turtlesim }:
buildRosPackage {
  pname = "ros-melodic-ros-tutorials";
  version = "0.9.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/melodic/ros_tutorials/0.9.1-0.tar.gz";
    name = "0.9.1-0.tar.gz";
    sha256 = "566f9e87ffd41023bf48a504e928de4e837676cfade117ef7c208c89e352fa4a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp-tutorials rospy-tutorials turtlesim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros_tutorials contains packages that demonstrate various features of ROS,
    as well as support packages which help demonstrate those features.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
