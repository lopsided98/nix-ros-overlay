
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-joy-linux";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/galactic/joy_linux/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "f7cf460a6939d956ad4ddb556b9247be6158649c49e2299e6834ad294a32b9dc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 driver for a generic Linux joystick.
    Will contain a MacOS and Windows version later.
    The joy package contains joy_node, a node that interfaces a
    generic Linux joystick to ROS2. This node publishes a &quot;Joy&quot;
    message, which contains the current state of each one of the
    joystick's buttons and axes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
