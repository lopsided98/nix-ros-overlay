
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cmake, geometry-msgs, gps-msgs, mrpt-img, mrpt-maps, mrpt-obs, nav-msgs, rmw, rmw-implementation, ros-environment, rosbag2-cpp, rosidl-typesupport-cpp, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-libros-bridge";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/lyrical/mrpt_libros_bridge/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "87d72c537641b3176e033a61cc696eef227033a3348758c6e105573c1332c440";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs gps-msgs mrpt-img mrpt-maps mrpt-obs nav-msgs rmw rmw-implementation rosbag2-cpp rosidl-typesupport-cpp sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) ros2bridge C++ library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
