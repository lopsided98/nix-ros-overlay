
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-trajectory-msgs";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/trajectory_msgs/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "6dc809d37afe25c9f894e06fe4755ae53ec1b8a42a768a9d82b5b3fab5e6808b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rosbag-migration-rule std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages for defining robot trajectories. These messages are
    also the building blocks of most of the
    <a href="http://wiki.ros.org/control_msgs">control_msgs</a> actions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
