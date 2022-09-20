
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-tuw-multi-robot-msgs";
  version = "0.0.13";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/melodic/tuw_multi_robot_msgs/0.0.13-0.tar.gz";
    name = "0.0.13-0.tar.gz";
    sha256 = "c46ab49af256d3f580c7eade0281686d12dfa70472080d9c6b4a6c9c3e153f43";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_multi_robot_msgs package contains messages for sending graph, route and sync data over topics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
