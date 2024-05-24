
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, can-msgs, diagnostic-updater, rclcpp }:
buildRosPackage {
  pname = "ros-humble-off-highway-can";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_can/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "a16f9e806e8ab54f7153a60c2d2d07faec941292f85a76e0dd2fb10aa5f1b5c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ can-msgs diagnostic-updater rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_can package";
    license = with lib.licenses; [ "Apache-2.0,-MIT" ];
  };
}
