
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, nav-msgs, mrpt1, std-msgs, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-map";
  version = "0.1.24";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_map/0.1.24-0.tar.gz;
    sha256 = "f4f72c694b9caf5552cfb2738387514f0dcea89c93fc7ff1c46d0f19d43b2eb3";
  };

  buildInputs = [ nav-msgs mrpt1 mrpt-bridge std-msgs sensor-msgs roscpp tf ];
  propagatedBuildInputs = [ nav-msgs mrpt1 mrpt-bridge std-msgs sensor-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mrpt_map is able to publish a mrpt map as ros occupancy grid like the map_server'';
    #license = lib.licenses.BSD;
  };
}
