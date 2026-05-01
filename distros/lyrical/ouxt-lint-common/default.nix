
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-pep257, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-lyrical-ouxt-lint-common";
  version = "0.0.8-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouxt_common-release/archive/release/lyrical/ouxt_lint_common/0.0.8-6.tar.gz";
    name = "0.0.8-6.tar.gz";
    sha256 = "3479d883453927ab134a4e613b9ccc5fa9459af94ba8198a4a31c3d2a3b2db8c";
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
