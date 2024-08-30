
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, geometry-msgs, mocap4r2-msgs, nav-msgs, rclcpp, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-state-estimator";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_state_estimator/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "25de64881a116227b50f6a8e2a49e63f0f3417ef3dc21fdad2f5d2bcc1b66494";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake as2-core geometry-msgs mocap4r2-msgs nav-msgs rclcpp tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Basic state estimator for AeroStack2";
    license = with lib.licenses; [ "BDS-3-Clause" ];
  };
}
