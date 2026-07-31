
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, easynav-common, geometry-msgs, nav-msgs, pcl-conversions, pcl-ros, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2-geometry-msgs, tf2-ros, vision-msgs }:
buildRosPackage {
  pname = "ros-kilted-easynav-sensors";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav_sensors/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "fa716d92894543c33c80341c5b70bb2ad3dc1b0780627a50548b42fca729ec79";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge easynav-common geometry-msgs nav-msgs pcl-conversions pcl-ros pluginlib rclcpp rclcpp-lifecycle sensor-msgs tf2-geometry-msgs tf2-ros vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Sensors package.";
    license = with lib.licenses; [ asl20 ];
  };
}
