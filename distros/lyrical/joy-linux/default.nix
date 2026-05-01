
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-joy-linux";
  version = "3.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/lyrical/joy_linux/3.3.0-4.tar.gz";
    name = "3.3.0-4.tar.gz";
    sha256 = "4d5dc16a112eae2f610920ea79364f47c24aed8a20e2f0a0a27e09c63d928bd0";
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
    generic Linux joystick to ROS2. This node publishes a \"Joy\"
    message, which contains the current state of each one of the
    joystick's buttons and axes.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
