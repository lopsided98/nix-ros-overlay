
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-pep257, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-humble-ouxt-lint-common";
  version = "0.0.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouxt_common-release/archive/release/humble/ouxt_lint_common/0.0.8-3.tar.gz";
    name = "0.0.8-3.tar.gz";
    sha256 = "ced95f1aba172a1045e13e6b22a4c1f2bc3e43ab664ea42f1766f299d02fa45a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-clang-format ament-cmake-copyright ament-cmake-pep257 ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''common linter settings for OUXT Polaris ROS2 packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
