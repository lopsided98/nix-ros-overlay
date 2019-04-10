
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-robot-activity-msgs";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/snt-robotics/robot_activity-release/archive/release/lunar/robot_activity_msgs/0.1.1-0.tar.gz;
    sha256 = "504a80ba7f793b46f0c0e1056aa3743cc9b021d6f58d6a91017ceaf432ee2b05";
  };

  buildInputs = [ std-msgs message-generation message-runtime ];
  propagatedBuildInputs = [ std-msgs message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains messages used by robot_activity, such as node's state
    and error'';
    #license = lib.licenses.BSD;
  };
}
