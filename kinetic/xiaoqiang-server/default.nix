
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xiaoqiang-msgs, rospy, std-msgs, catkin }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-server";
  version = "0.0.12";

  src = fetchurl {
    url = "https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_server/0.0.12-0.tar.gz";
    name = "0.0.12-0.tar.gz";
    sha256 = "ba365f76d8d3d6ccca2653bfcc91fabbddbf0d6cfd6cd70ba5814b19f0d171a6";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs rospy xiaoqiang-msgs ];
  propagatedBuildInputs = [ xiaoqiang-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''xiaoqiang remote control server'';
    license = with lib.licenses; [ mit ];
  };
}
