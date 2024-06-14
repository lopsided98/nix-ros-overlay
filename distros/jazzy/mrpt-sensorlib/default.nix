
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-msgs, mrpt2, rclcpp, rclcpp-components, ros-environment, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-sensorlib";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/jazzy/mrpt_sensorlib/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "54f0e38b88b7e3d73fc74ee2d46be345f45f37a346f92d8bb4f7d3220a4e49d3";
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
