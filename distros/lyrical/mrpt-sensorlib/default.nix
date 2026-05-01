
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, mrpt-libhwdrivers, mrpt-libros-bridge, mrpt-msgs, nav-msgs, rclcpp, rclcpp-components, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-sensorlib";
  version = "0.2.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/lyrical/mrpt_sensorlib/0.2.4-3.tar.gz";
    name = "0.2.4-3.tar.gz";
    sha256 = "c0241411a4e4558268859f4a6e6d760dd300685eb7f7a3f4db4fb027fd14c410";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common cv-bridge geometry-msgs mrpt-libhwdrivers mrpt-libros-bridge mrpt-msgs nav-msgs rclcpp rclcpp-components sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ library for the base generic MRPT sensor node";
    license = with lib.licenses; [ bsd3 ];
  };
}
