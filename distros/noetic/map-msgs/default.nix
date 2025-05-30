
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nav-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-map-msgs";
  version = "1.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_msgs-release/archive/release/noetic/map_msgs/1.14.2-1.tar.gz";
    name = "1.14.2-1.tar.gz";
    sha256 = "f758e92af8ff79d94bc46d5392d8782846eff52730065ca6f3b5a5d99fd89628";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime nav-msgs sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package defines messages commonly used in mapping packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
