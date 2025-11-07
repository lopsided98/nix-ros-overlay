
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cmake, cv-bridge, geometry-msgs, mrpt-libapps, nav-msgs, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libros-bridge";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/rolling/mrpt_libros_bridge/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "aea08641704a5f575f0d6d08ef877df2489ce57132cec94eaa64b4844212031a";
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
