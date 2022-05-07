
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-bridge, mrpt2, nav-msgs, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-mrpt-map";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_map/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e4e657ac8765764b6f8efd661d66102e91391a15cb3655d87b01981799e5e7c0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mrpt-bridge mrpt2 nav-msgs roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mrpt_map is able to publish a mrpt map as ros occupancy grid like the map_server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
