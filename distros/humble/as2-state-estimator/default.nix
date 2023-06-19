
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-core, geometry-msgs, nav-msgs, rclcpp, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-state-estimator";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_state_estimator/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "553bc059ffb1ede1d56b5dc9aab9dc255724fc4fd65a92191db04ae950a8f092";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ ament-cmake as2-core geometry-msgs nav-msgs rclcpp tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Basic state estimator for AeroStack2'';
    license = with lib.licenses; [ "BDS-3-Clause" ];
  };
}
