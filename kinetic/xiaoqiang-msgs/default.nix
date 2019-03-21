
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-msgs";
  version = "0.0.12";

  src = fetchurl {
    url = https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_msgs/0.0.12-0.tar.gz;
    sha256 = "6b94b5df5ec1607f7bc391af6640b1f3333df52628ab586461e7a3da53c57488";
  };

  propagatedBuildInputs = [ std-msgs message-generation rospy ];
  nativeBuildInputs = [ std-msgs catkin message-generation rospy ];

  meta = {
    description = ''Messages used by xiaoqiang'';
    #license = lib.licenses.MIT;
  };
}
