
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, pal-statistics-msgs, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-foxy-pal-statistics";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_statistics-release/archive/release/foxy/pal_statistics/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "22f68620ffac68d0877998071324eb5ec40ec2c8d608597aac548ed830beec1c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost pal-statistics-msgs rclcpp rclpy ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The pal_statistics package'';
    license = with lib.licenses; [ mit ];
  };
}
