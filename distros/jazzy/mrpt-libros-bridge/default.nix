
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cmake, cv-bridge, geometry-msgs, gps-msgs, mrpt-libmaps, mrpt-libobs, nav-msgs, ros-environment, rosbag2-cpp, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-libros-bridge";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/jazzy/mrpt_libros_bridge/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "d3574388a3627c9f663e80ad7659ffcd04e28db1cfbddd1f60dfd88f0faafc00";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs gps-msgs mrpt-libmaps mrpt-libobs nav-msgs rosbag2-cpp sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) ros2bridge C++ library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
