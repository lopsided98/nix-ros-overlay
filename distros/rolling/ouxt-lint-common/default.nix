
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-pep257, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-rolling-ouxt-lint-common";
  version = "0.0.8-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouxt_common-release/archive/release/rolling/ouxt_lint_common/0.0.8-4.tar.gz";
    name = "0.0.8-4.tar.gz";
    sha256 = "36cf9ae3e748a4bf6e2c041f7a338ee4e019a740b39aa0eb15fb450d1770123c";
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
