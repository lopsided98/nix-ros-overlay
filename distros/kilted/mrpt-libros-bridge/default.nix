
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cmake, cv-bridge, geometry-msgs, gps-msgs, mrpt-libmaps, mrpt-libobs, nav-msgs, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-mrpt-libros-bridge";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/kilted/mrpt_libros_bridge/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "15f39b79531b98729793c1f8af61ea0a97f27905781534d733efd4ca50f351e5";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs gps-msgs mrpt-libmaps mrpt-libobs nav-msgs sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) ros2bridge C++ library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
