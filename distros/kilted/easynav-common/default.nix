
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, nav-msgs, pcl-conversions, pcl-ros, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2-geometry-msgs, tf2-ros, vision-msgs, yaets }:
buildRosPackage {
  pname = "ros-kilted-easynav-common";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav_common/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "a9f5bd07d6fdf131d60ef4757ceb0c5b08dcfa4110ebd1c139c6d642b29f2c3c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs nav-msgs pcl-conversions pcl-ros rclcpp rclcpp-lifecycle sensor-msgs tf2-geometry-msgs tf2-ros vision-msgs yaets ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Utils and types package.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
