
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-msgs, mrpt2, rclcpp, rclcpp-components, ros-environment, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-mrpt-sensorlib";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/iron/mrpt_sensorlib/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "24a1b06248b93dd949f8f5cee44bd6a47f448f5a1b09cc1dcc3e969a7cc8033c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mrpt-msgs mrpt2 rclcpp rclcpp-components tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ library for the base generic MRPT sensor node";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
