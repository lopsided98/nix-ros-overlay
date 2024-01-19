
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-pep257, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-iron-ouxt-lint-common";
  version = "0.0.8-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouxt_common-release/archive/release/iron/ouxt_lint_common/0.0.8-4.tar.gz";
    name = "0.0.8-4.tar.gz";
    sha256 = "46de0528cda3269b7285f0ca4f271e7aeb9d8e4f3ae7117560b4deb0dfe45416";
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
