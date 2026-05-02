
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-pep257, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-rolling-ouxt-lint-common";
  version = "0.0.8-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouxt_common-release/archive/release/rolling/ouxt_lint_common/0.0.8-5.tar.gz";
    name = "0.0.8-5.tar.gz";
    sha256 = "cd09ff532c2dc25fc75c1b121fd16c658e05300bf679fdad36924ed58bb2b6cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-clang-format ament-cmake-copyright ament-cmake-pep257 ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "common linter settings for OUXT Polaris ROS2 packages";
    license = with lib.licenses; [ asl20 ];
  };
}
