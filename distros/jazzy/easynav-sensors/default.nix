
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, easynav-common, geometry-msgs, nav-msgs, pcl-conversions, pcl-ros, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2-geometry-msgs, tf2-ros, vision-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-sensors";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_sensors/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "35d9d6e4c7063c9905c6e4de6399090a11a4b1044d195b8e13aafbb2ad40ee85";
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
