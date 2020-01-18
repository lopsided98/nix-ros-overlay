
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, autoware-auto-cmake, localization-common, osrf-testing-tools-cpp, rclcpp, tf2 }:
buildRosPackage {
  pname = "ros-dashing-localization-nodes";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/localization_nodes/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "6f5e25af3c01f1a7e90252bf518193f628915c3923d86f01af8d76e192bf382a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ localization-common rclcpp tf2 ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''Implementation of various localization nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
