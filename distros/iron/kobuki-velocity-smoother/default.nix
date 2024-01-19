
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, ecl-build, geometry-msgs, launch-testing, launch-testing-ament-cmake, launch-testing-ros, nav-msgs, python3Packages, rcl-interfaces, rclcpp, rclcpp-components, ros2test }:
buildRosPackage {
  pname = "ros-iron-kobuki-velocity-smoother";
  version = "0.15.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kobuki_velocity_smoother-release/archive/release/iron/kobuki_velocity_smoother/0.15.0-3.tar.gz";
    name = "0.15.0-3.tar.gz";
    sha256 = "0d9eccaf7b03cd0521f0f616fe212448e8325bbd29f36f6d6be1d642712cd0b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto launch-testing launch-testing-ament-cmake launch-testing-ros python3Packages.matplotlib ros2test ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rcl-interfaces rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Bound incoming velocity messages according to robot velocity and acceleration limits.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
