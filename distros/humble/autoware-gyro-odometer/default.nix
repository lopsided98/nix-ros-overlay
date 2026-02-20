
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-localization-util, autoware-utils-diagnostics, autoware-utils-geometry, autoware-utils-logging, autoware-utils-tf, diagnostic-msgs, fmt, geometry-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-gyro-odometer";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_gyro_odometer/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "d133e604d46bb44b7d53391a3e699bd0c71485351b60ca5f645bfcff13ba16e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-localization-util autoware-utils-diagnostics autoware-utils-geometry autoware-utils-logging autoware-utils-tf diagnostic-msgs fmt geometry-msgs rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_gyro_odometer package as a ROS 2 node";
    license = with lib.licenses; [ asl20 ];
  };
}
