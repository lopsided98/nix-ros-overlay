
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rmw-implementation-cmake";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/eloquent/rmw_implementation_cmake/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "2c4326957993db609feda36df0ebc975f822a281db37e66fefba854f7381f2b3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake functions which can discover and enumerate available implementations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
