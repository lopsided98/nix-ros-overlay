
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-pep257, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-jazzy-ouxt-lint-common";
  version = "0.0.8-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouxt_common-release/archive/release/jazzy/ouxt_lint_common/0.0.8-5.tar.gz";
    name = "0.0.8-5.tar.gz";
    sha256 = "3c36cb7cf9776bca5b0079c7180a8b4478256e017230d1f81d92ae04b939c963";
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
