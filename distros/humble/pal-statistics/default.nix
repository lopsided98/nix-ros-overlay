
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, boost, pal-statistics-msgs, rclcpp, rclcpp-lifecycle, rclpy }:
buildRosPackage {
  pname = "ros-humble-pal-statistics";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_statistics-release/archive/release/humble/pal_statistics/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "13a4dfff2db2642476325476b4423d04690b9932aec95e1405d3f8d9c70925d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost pal-statistics-msgs rclcpp rclcpp-lifecycle rclpy ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "The pal_statistics package";
    license = with lib.licenses; [ mit ];
  };
}
