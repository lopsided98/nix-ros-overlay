
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-test, launch-testing, python-cmake-module }:
buildRosPackage {
  pname = "ros-rolling-launch-testing-ament-cmake";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_testing_ament_cmake/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "43a03cff2d3128e73860762a53e743a4f124b609dfe90e7ad4ef9758e7c62440";
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
