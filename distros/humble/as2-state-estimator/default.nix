
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-core, geometry-msgs, nav-msgs, rclcpp, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-state-estimator";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_state_estimator/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "723a7d35264f2670f36ff650b665e35f0af5466d361ce9067ac9dcc0e86bbde9";
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
