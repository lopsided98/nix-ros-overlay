
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-test, launch-testing, python-cmake-module }:
buildRosPackage {
  pname = "ros-rolling-launch-testing-ament-cmake";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_testing_ament_cmake/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "fc1d5c7adcb1bbd2b1f0deb8c0f6b219844f168bb6196c9f2f0d7ab7b479a838";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright launch-testing python-cmake-module ];
  propagatedBuildInputs = [ ament-cmake-test launch-testing python-cmake-module ];
  nativeBuildInputs = [ ament-cmake ament-cmake-test launch-testing python-cmake-module ];

  meta = {
    description = ''A package providing cmake functions for running launch tests from the build.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
