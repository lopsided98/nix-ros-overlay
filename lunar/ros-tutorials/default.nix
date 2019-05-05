
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlesim, roscpp-tutorials, catkin, rospy-tutorials }:
buildRosPackage {
  pname = "ros-lunar-ros-tutorials";
  version = "0.8.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_tutorials-release/archive/release/lunar/ros_tutorials/0.8.1-0.tar.gz;
    sha256 = "e8606d09ad282f199c5e8725646a09c73711678af728abc631fa8c7ac091edf3";
  };

  propagatedBuildInputs = [ turtlesim roscpp-tutorials rospy-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros_tutorials contains packages that demonstrate various features of ROS,
    as well as support packages which help demonstrate those features.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
