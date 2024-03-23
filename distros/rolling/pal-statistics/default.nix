
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, pal-statistics-msgs, rclcpp, rclcpp-lifecycle, rclpy }:
buildRosPackage {
  pname = "ros-rolling-pal-statistics";
  version = "2.1.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_statistics-release/archive/release/rolling/pal_statistics/2.1.5-2.tar.gz";
    name = "2.1.5-2.tar.gz";
    sha256 = "fbb57c24665a7768692083845d7c5639a813736a276599cf4f20a35f116a807c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost pal-statistics-msgs rclcpp rclcpp-lifecycle rclpy ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_statistics package";
    license = with lib.licenses; [ mit ];
  };
}
