
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, nav-msgs, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tuw-multi-robot-msgs";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/tuw-robotics/tuw_msgs-release/archive/release/kinetic/tuw_multi_robot_msgs/0.0.11-0.tar.gz;
    sha256 = "96bfbcc40f306e32715fa2b495fa26c53977b32cd924cc7b7cfd3cade1091d0c";
  };

  propagatedBuildInputs = [ std-msgs nav-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ nav-msgs message-generation std-msgs catkin geometry-msgs ];

  meta = {
    description = ''The tuw_multi_robot_msgs package contains messages for sending graph, route and sync data over topics.'';
    #license = lib.licenses.BSD;
  };
}
