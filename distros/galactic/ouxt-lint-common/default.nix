
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-pep257, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-galactic-ouxt-lint-common";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/ouxt_common-release/archive/release/galactic/ouxt_lint_common/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "a87d0ee3b565afb10f1832e04cfb3f96df1cf3b47a448e369de7b8bc162d1375";
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
