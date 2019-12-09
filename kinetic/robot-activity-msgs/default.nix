
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-runtime, message-generation, catkin }:
buildRosPackage {
  pname = "ros-kinetic-robot-activity-msgs";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/snt-robotics/robot_activity-release/archive/release/kinetic/robot_activity_msgs/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "d8e705877189c96bde5c91321476019fcb3181365af90c82b9b6ab60a30c1f5e";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation message-runtime ];
  propagatedBuildInputs = [ std-msgs message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains messages used by robot_activity, such as node's state
    and error'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
