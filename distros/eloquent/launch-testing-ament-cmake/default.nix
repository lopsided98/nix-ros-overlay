
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-test, launch-testing, python-cmake-module }:
buildRosPackage {
  pname = "ros-eloquent-launch-testing-ament-cmake";
  version = "0.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/eloquent/launch_testing_ament_cmake/0.9.7-1.tar.gz";
    name = "0.9.7-1.tar.gz";
    sha256 = "72a2e22000b06ac4dff7ba227936ce61407ac0061569375542833338074a752e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright launch-testing ];
  propagatedBuildInputs = [ ament-cmake-test launch-testing python-cmake-module ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package providing cmake functions for running launch tests from the build.'';
    license = with lib.licenses; [ asl20 ];
  };
}
