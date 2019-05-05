
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-rosgraph-msgs";
  version = "1.11.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm_msgs-release/archive/release/melodic/rosgraph_msgs/1.11.2-0.tar.gz;
    sha256 = "5aa9e1b1adbf5e86931e771b1a154384485803a73e50804e0c739f83767270c9";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages relating to the ROS Computation Graph. These are generally considered to be low-level messages that end users do not interact with.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
