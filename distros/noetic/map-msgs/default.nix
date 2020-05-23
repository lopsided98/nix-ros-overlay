
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nav-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-map-msgs";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_msgs-release/archive/release/noetic/map_msgs/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "a4f536d85ba775adbb06217eff50d3ed057d4bd87ef42c38e4c0523dc5b79d74";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime nav-msgs sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages commonly used in mapping packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
