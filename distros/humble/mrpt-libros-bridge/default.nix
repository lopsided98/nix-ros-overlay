
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cmake, cv-bridge, geometry-msgs, mrpt-libapps, nav-msgs, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-mrpt-libros-bridge";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/humble/mrpt_libros_bridge/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "e93518b0e7c8d7b069128613c74f264bc98b56423485d3480e6ac03d8af2c9a3";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake cmake cv-bridge geometry-msgs nav-msgs ros-environment sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ mrpt-libapps ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) ros2bridge C++ library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
