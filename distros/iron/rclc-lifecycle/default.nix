
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl-lifecycle, rclc, std-msgs }:
buildRosPackage {
  pname = "ros-iron-rclc-lifecycle";
  version = "3.0.9-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/iron/rclc_lifecycle/3.0.9-3.tar.gz";
    name = "3.0.9-3.tar.gz";
    sha256 = "84bf07cb5d904d7920a72d283979eb493127621210e136e954501cee4050e692";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ lifecycle-msgs rcl-lifecycle rclc std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''rclc lifecycle convenience methods.'';
    license = with lib.licenses; [ asl20 ];
  };
}
