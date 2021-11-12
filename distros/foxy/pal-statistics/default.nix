
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, pal-statistics-msgs, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-foxy-pal-statistics";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_statistics-release/archive/release/foxy/pal_statistics/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "f43018efb414dc8d17aafb3999c31defe5c4efbeb09f977c6923c1d966c4180f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost pal-statistics-msgs rclcpp rclpy ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The pal_statistics package'';
    license = with lib.licenses; [ mit ];
  };
}
