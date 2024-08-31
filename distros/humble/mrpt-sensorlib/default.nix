
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-msgs, mrpt2, rclcpp, rclcpp-components, ros-environment, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mrpt-sensorlib";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/humble/mrpt_sensorlib/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "c9c0ec20d2b621381a82a81705f4916deed508f8b795721c3ac6779e835d54c8";
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
