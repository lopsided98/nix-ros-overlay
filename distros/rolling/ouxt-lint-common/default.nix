
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-pep257, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-rolling-ouxt-lint-common";
  version = "0.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouxt_common-release/archive/release/rolling/ouxt_lint_common/0.0.8-2.tar.gz";
    name = "0.0.8-2.tar.gz";
    sha256 = "2be2df274ad1432716eafb6e0fbcd476cd4ccf46ce58b195aacde1c35eb83911";
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
