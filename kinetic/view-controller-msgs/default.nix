
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, genmsg, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-view-controller-msgs";
  version = "0.1.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/view_controller_msgs-release/archive/release/kinetic/view_controller_msgs/0.1.2-0.tar.gz;
    sha256 = "18c0b2f99090be9199cff68e57ab95df08d90864b67c632f6d93cd9042e76a20";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ message-generation std-msgs genmsg catkin geometry-msgs ];

  meta = {
    description = ''Messages for (camera) view controllers'';
    #license = lib.licenses.BSD;
  };
}
