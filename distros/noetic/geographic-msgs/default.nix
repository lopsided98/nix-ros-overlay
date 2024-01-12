
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs, uuid-msgs }:
buildRosPackage {
  pname = "ros-noetic-geographic-msgs";
  version = "0.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/noetic/geographic_msgs/0.5.6-1.tar.gz";
    name = "0.5.6-1.tar.gz";
    sha256 = "0c19562199a4f9f813362ad87d4345bb8ae77c77c41f7fe332eb672ad19d2d79";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for Geographic Information Systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
