
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, pal-statistics-msgs, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-humble-pal-statistics";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_statistics-release/archive/release/humble/pal_statistics/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "7a744e36c0e3010028c986fec1ad1f6b5f50dbc2dcc58ae26008dfa510aff267";
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
