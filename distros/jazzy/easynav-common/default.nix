
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, nav-msgs, pcl-conversions, pcl-ros, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2-geometry-msgs, tf2-ros, vision-msgs, yaets }:
buildRosPackage {
  pname = "ros-jazzy-easynav-common";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_common/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "54d281f51e7d6a794c4c84c36f1fe48b40b1d817379f8d5e55a4007ba9201e45";
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
