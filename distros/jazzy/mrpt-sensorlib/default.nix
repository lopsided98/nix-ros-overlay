
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, mrpt-libhwdrivers, mrpt-libros-bridge, mrpt-msgs, rclcpp-components, ros-environment, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-sensorlib";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/jazzy/mrpt_sensorlib/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "004ff3a8288ea9b164261a027d3bf35df1188004e3d8f3cba9cf097cbd0eb043";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ diagnostic-updater mrpt-libhwdrivers mrpt-libros-bridge mrpt-msgs rclcpp-components tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ library for the base generic MRPT sensor node";
    license = with lib.licenses; [ bsd3 ];
  };
}
