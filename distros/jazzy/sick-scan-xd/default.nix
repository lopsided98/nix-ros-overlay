
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, geometry-msgs, nav-msgs, rcl-interfaces, rclcpp, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-sick-scan-xd";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_scan_xd-release/archive/release/jazzy/sick_scan_xd/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "ff1496b0466b841811ce1f45b952b5703bc886090ca1afebbdb3b1ec1a36dedb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater geometry-msgs nav-msgs rcl-interfaces rclcpp rosidl-default-runtime sensor-msgs std-msgs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 1 and 2 driver for SICK scanner";
    license = with lib.licenses; [ asl20 ];
  };
}
