
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, geometry-msgs, nav-msgs, rcl-interfaces, rclcpp, rclcpp-lifecycle, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-sick-scan-xd";
  version = "3.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_scan_xd-release/archive/release/jazzy/sick_scan_xd/3.10.0-1.tar.gz";
    name = "3.10.0-1.tar.gz";
    sha256 = "04c954a6f8bac703ad1c79b7bb9d89c94de509dc629d3d32a2f9162331c7f1aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater geometry-msgs nav-msgs rcl-interfaces rclcpp rclcpp-lifecycle rosidl-default-runtime sensor-msgs std-msgs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 1 and 2 driver for SICK scanner";
    license = with lib.licenses; [ asl20 ];
  };
}
