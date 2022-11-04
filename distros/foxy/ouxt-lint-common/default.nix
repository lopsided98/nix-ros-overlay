
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-pep257, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-foxy-ouxt-lint-common";
  version = "0.0.8-r2";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/ouxt_common-release/archive/release/foxy/ouxt_lint_common/0.0.8-2.tar.gz";
    name = "0.0.8-2.tar.gz";
    sha256 = "a0a39b499588769bce6675393941441202dda4d14ff1e425612c23a57b0e954c";
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
