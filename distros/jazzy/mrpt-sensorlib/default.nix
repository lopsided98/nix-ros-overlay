
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, mrpt-hwdrivers, mrpt-libros-bridge, mrpt-msgs, rclcpp-components, ros-environment, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-sensorlib";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/jazzy/mrpt_sensorlib/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "ee3d2a163c0a13697dedb843c7b4dba2659f707a8b7d73a059cb3c79946cf40c";
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
