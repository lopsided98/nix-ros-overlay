
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp-tutorials, rospy-tutorials, turtlesim }:
buildRosPackage {
  pname = "ros-noetic-ros-tutorials";
  version = "0.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/noetic/ros_tutorials/0.10.3-1.tar.gz";
    name = "0.10.3-1.tar.gz";
    sha256 = "5d2210ba31ebc201323264749901d90478792bd41323be34d637a382ffd3c16c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp-tutorials rospy-tutorials turtlesim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ros_tutorials contains packages that demonstrate various features of ROS,
    as well as support packages which help demonstrate those features.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
