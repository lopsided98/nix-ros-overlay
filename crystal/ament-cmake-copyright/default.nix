
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, ament-copyright, ament-cmake-core, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-copyright";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_cmake_copyright/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "d02c99554dabb82416c5fea8397c1404a420beb134a348f080086b7b4b5e42e9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-copyright ];
  nativeBuildInputs = [ ament-cmake-test ament-copyright ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_copyright to check every source file contains copyright reference.'';
    license = with lib.licenses; [ asl20 ];
  };
}
