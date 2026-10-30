
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cmake, geometry-msgs, gps-msgs, mrpt-maps, mrpt-obs, nav-msgs, ros-environment, rosbag2-cpp, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-mrpt-libros-bridge";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/kilted/mrpt_libros_bridge/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "6ba8d65fa2a2b3bd038b585b7e1add8b367fe5f56677a7cd35710828fab4d0b6";
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
