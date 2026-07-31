
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-lifecycle, tf2-ros, yaets }:
buildRosPackage {
  pname = "ros-jazzy-easynav-common";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_common/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "f6e5d7726054881a415653e13a9113da9f1da6aa3e4b2ee651e35bd058f8e30e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rclcpp-lifecycle tf2-ros yaets ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Utils and types package.";
    license = with lib.licenses; [ asl20 ];
  };
}
