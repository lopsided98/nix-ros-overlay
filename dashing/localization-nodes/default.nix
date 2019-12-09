
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake, autoware-auto-cmake, ament-cmake-gtest, osrf-testing-tools-cpp, tf2, localization-common, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-localization-nodes";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/localization_nodes/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "6f5e25af3c01f1a7e90252bf518193f628915c3923d86f01af8d76e192bf382a";
  };

  buildType = "ament_cmake";
  buildInputs = [ localization-common rclcpp tf2 ];
  checkInputs = [ ament-lint-auto osrf-testing-tools-cpp ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ localization-common rclcpp tf2 ];
  nativeBuildInputs = [ autoware-auto-cmake ament-cmake ];

  meta = {
    description = ''Implementation of various localization nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
