
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nav-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-map-msgs";
  version = "1.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_msgs-release/archive/release/noetic/map_msgs/1.14.1-1.tar.gz";
    name = "1.14.1-1.tar.gz";
    sha256 = "e9ae695b8c3f745dc6c3878810a97546c4dd528000a0c8058d6f1f41983df432";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime nav-msgs sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages commonly used in mapping packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
