
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, pal-statistics-msgs, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-galactic-pal-statistics";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_statistics-release/archive/release/galactic/pal_statistics/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "f30370c4b5edde30d3b3000f59635247c39ad516b1aa1bc97c2c997c2af8484e";
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
