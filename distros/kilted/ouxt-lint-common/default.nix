
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-pep257, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-kilted-ouxt-lint-common";
  version = "0.0.8-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouxt_common-release/archive/release/kilted/ouxt_lint_common/0.0.8-5.tar.gz";
    name = "0.0.8-5.tar.gz";
    sha256 = "949dd1d95b8298e87fbdc168c8ea84f575a52a43f25c7677685a83ae95a0c37d";
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
