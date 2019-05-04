
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, nav-msgs, mrpt1, std-msgs, mrpt-bridge, tf }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-map";
  version = "0.1.24";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_map/0.1.24-0.tar.gz;
    sha256 = "f4f72c694b9caf5552cfb2738387514f0dcea89c93fc7ff1c46d0f19d43b2eb3";
  };

  buildInputs = [ tf sensor-msgs nav-msgs mrpt1 std-msgs mrpt-bridge roscpp ];
  propagatedBuildInputs = [ tf sensor-msgs nav-msgs mrpt1 std-msgs mrpt-bridge roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mrpt_map is able to publish a mrpt map as ros occupancy grid like the map_server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
