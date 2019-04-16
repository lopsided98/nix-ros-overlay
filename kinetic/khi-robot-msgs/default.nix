
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot_msgs/1.1.0-1.tar.gz;
    sha256 = "2e5c421fbbb318801c335c6e243b8840a010d686bde266cdf183da831fe96c74";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains KHI ROS robot msgs'';
    #license = lib.licenses.BSD;
  };
}
