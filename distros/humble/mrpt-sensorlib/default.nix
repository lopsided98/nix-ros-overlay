
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, mrpt-hwdrivers, mrpt-libros-bridge, mrpt-msgs, rclcpp-components, ros-environment, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mrpt-sensorlib";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/humble/mrpt_sensorlib/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "e1d83c2dad1ff9550f3e15a8e73d746a4b6400330cad15c069bda546c50da426";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ diagnostic-updater mrpt-hwdrivers mrpt-libros-bridge mrpt-msgs rclcpp-components tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ library for the base generic MRPT sensor node";
    license = with lib.licenses; [ bsd3 ];
  };
}
