
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot-msgs";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot_msgs/1.0.0-0.tar.gz;
    sha256 = "f691e3ad39e1b66e9ceec1f08df42028f2fcd250621bab689a3f0e87251529fc";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains KHI ROS robot msgs'';
    #license = lib.licenses.BSD;
  };
}
