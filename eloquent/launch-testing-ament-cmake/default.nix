
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-test, launch-testing, python-cmake-module }:
buildRosPackage {
  pname = "ros-eloquent-launch-testing-ament-cmake";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/eloquent/launch_testing_ament_cmake/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "76c6e60a1a5f11e0b2d405b31e53dbbe4864a76457e32cb39ae394587ac82610";
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
