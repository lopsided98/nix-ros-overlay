
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-xmllint";
  version = "0.6.4";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_cmake_xmllint/0.6.4-0.tar.gz;
    sha256 = "3c62c07aa1f927358d19975e1efc9252b74b3e087cde3ce38a09772b5e629aca";
  };

  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_xmllint to check XML file using xmmlint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
