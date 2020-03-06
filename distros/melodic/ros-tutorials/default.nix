
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp-tutorials, rospy-tutorials, turtlesim }:
buildRosPackage {
  pname = "ros-melodic-ros-tutorials";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/melodic/ros_tutorials/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "b019124fda09bf341208cb2abb11f82ba9b4e4f811cd8ea47cbfd9bed480dc62";
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
