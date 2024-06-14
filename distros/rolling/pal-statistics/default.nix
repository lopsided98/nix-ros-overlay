
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, pal-statistics-msgs, rclcpp, rclcpp-lifecycle, rclpy }:
buildRosPackage {
  pname = "ros-rolling-pal-statistics";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_statistics-release/archive/release/rolling/pal_statistics/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "b3b48535f91157c46c724492800e9a129e7f463058f76d32e3a114ca9db20058";
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
