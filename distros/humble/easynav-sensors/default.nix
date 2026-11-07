
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, diagnostic-msgs, easynav-common, geometry-msgs, lifecycle-msgs, nav-msgs, pcl, pcl-conversions, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, vision-msgs }:
buildRosPackage {
  pname = "ros-humble-easynav-sensors";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/humble/easynav_sensors/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "5761e20d50104376a254afc2d40b5e741c957646a25764185d7d5b90192f6bb2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common std-msgs ];
  propagatedBuildInputs = [ cv-bridge diagnostic-msgs easynav-common geometry-msgs lifecycle-msgs nav-msgs pcl pcl-conversions pluginlib rclcpp rclcpp-lifecycle sensor-msgs tf2 tf2-geometry-msgs tf2-ros vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Sensors package.";
    license = with lib.licenses; [ asl20 ];
  };
}
