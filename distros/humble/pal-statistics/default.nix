
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, pal-statistics-msgs, rclcpp, rclcpp-lifecycle, rclpy }:
buildRosPackage {
  pname = "ros-humble-pal-statistics";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_statistics-release/archive/release/humble/pal_statistics/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "c999b1b19fe231f20bf5a69659a533a19a0888b72d90b8a80a6d6a82fb9576d5";
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
