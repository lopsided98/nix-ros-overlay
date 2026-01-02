
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cmake, cv-bridge, geometry-msgs, mrpt-libmaps, mrpt-libobs, nav-msgs, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libros-bridge";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/rolling/mrpt_libros_bridge/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "791ca5dbd6bcecdc4ade4151dbd1f07d75ccaf0e07c527463e9faec64f1ddc82";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs mrpt-libmaps mrpt-libobs nav-msgs sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) ros2bridge C++ library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
