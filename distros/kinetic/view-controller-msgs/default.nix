
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-view-controller-msgs";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/view_controller_msgs-release/archive/release/kinetic/view_controller_msgs/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "18c0b2f99090be9199cff68e57ab95df08d90864b67c632f6d93cd9042e76a20";
  };

  buildType = "catkin";
  buildInputs = [ genmsg message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for (camera) view controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
