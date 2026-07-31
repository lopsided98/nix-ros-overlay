
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-agnocast-wrapper, autoware-cmake, autoware-lint-common, autoware-localization-util, autoware-utils-diagnostics, autoware-utils-geometry, autoware-utils-logging, autoware-utils-tf, diagnostic-msgs, fmt, geometry-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-gyro-odometer";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_gyro_odometer/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "c56ceae7e510339615e235707be23e904634626cfdc7854ee5e4ff0924426c7f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-agnocast-wrapper autoware-localization-util autoware-utils-diagnostics autoware-utils-geometry autoware-utils-logging autoware-utils-tf diagnostic-msgs fmt geometry-msgs rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_gyro_odometer package as a ROS 2 node";
    license = with lib.licenses; [ asl20 ];
  };
}
