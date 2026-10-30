
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cmake, geometry-msgs, gps-msgs, mrpt-maps, mrpt-obs, nav-msgs, ros-environment, rosbag2-cpp, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libros-bridge";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/rolling/mrpt_libros_bridge/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "0d3a15d5ff6993c6faf9f6848ad7f53e85d5a3c914ed67839fa3bda42a83241f";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs gps-msgs mrpt-maps mrpt-obs nav-msgs rosbag2-cpp sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) ros2bridge C++ library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
