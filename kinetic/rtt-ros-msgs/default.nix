
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-rtt-ros-msgs";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_ros_msgs/2.9.1-0.tar.gz;
    sha256 = "7ec814fe536b7d9ef8c047512987da95e2f019ba4575e95ced0650f7252bc0b5";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides .msg and .srv files for use with the rtt_ros_integration packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
