
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, mrpt-libhwdrivers, mrpt-libros-bridge, mrpt-msgs, nav-msgs, rclcpp, rclcpp-components, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-mrpt-sensorlib";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/rolling/mrpt_sensorlib/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "49c1fe3609f88a480a4d10988acdba9cc43b940d49e33e616eb16c2f148a5a74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common cv-bridge geometry-msgs mrpt-libhwdrivers mrpt-libros-bridge mrpt-msgs nav-msgs rclcpp rclcpp-components sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ library for the base generic MRPT sensor node";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
