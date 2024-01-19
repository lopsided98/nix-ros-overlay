
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, pal-statistics-msgs, rclcpp, rclcpp-lifecycle, rclpy }:
buildRosPackage {
  pname = "ros-humble-pal-statistics";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_statistics-release/archive/release/humble/pal_statistics/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "1e832180ad7b52b2bff9780a66a660de748caedbe6b0edb26e230ac38ffaa788";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost pal-statistics-msgs rclcpp rclcpp-lifecycle rclpy ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The pal_statistics package'';
    license = with lib.licenses; [ mit ];
  };
}
