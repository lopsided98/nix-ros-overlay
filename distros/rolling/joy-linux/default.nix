
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-joy-linux";
  version = "3.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/rolling/joy_linux/3.3.0-2.tar.gz";
    name = "3.3.0-2.tar.gz";
    sha256 = "e112d211ada581b5952afac5d58c77744f24b26d11c2e0e86adf8dc29db44df3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 driver for a generic Linux joystick.
    Will contain a MacOS and Windows version later.
    The joy package contains joy_node, a node that interfaces a
    generic Linux joystick to ROS2. This node publishes a &quot;Joy&quot;
    message, which contains the current state of each one of the
    joystick's buttons and axes.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
