
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cmake, geometry-msgs, gps-msgs, mrpt-img, mrpt-maps, mrpt-obs, nav-msgs, ros-environment, rosbag2-cpp, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-libros-bridge";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/lyrical/mrpt_libros_bridge/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "0fd10ac8797b528151cb5de86957ee94140413f52c4628176ac81cddb5f2c3d3";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs gps-msgs mrpt-img mrpt-maps mrpt-obs nav-msgs rosbag2-cpp sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) ros2bridge C++ library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
