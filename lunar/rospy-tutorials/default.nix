
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, message-generation, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-lunar-rospy-tutorials";
  version = "0.8.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_tutorials-release/archive/release/lunar/rospy_tutorials/0.8.1-0.tar.gz;
    sha256 = "2da4db1ef54e7df2d352cd6d797fa1228beb860b64bb1745b4acff37a8d18c11";
  };

  buildInputs = [ std-msgs rostest message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package attempts to show the features of ROS python API step-by-step,
    including using messages, servers, parameters, etc. These tutorials are compatible with the nodes in roscpp_tutorial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
