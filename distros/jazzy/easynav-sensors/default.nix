
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, diagnostic-msgs, easynav-common, geometry-msgs, lifecycle-msgs, nav-msgs, pcl, pcl-conversions, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, vision-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-sensors";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_sensors/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "25bbaec12d552c761ad0e399e4fb8f9bf59ef4b1a7feead2ae86c7fbf058d48d";
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
