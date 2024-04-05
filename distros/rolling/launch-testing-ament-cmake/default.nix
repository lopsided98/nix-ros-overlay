
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-test, launch-testing, python-cmake-module }:
buildRosPackage {
  pname = "ros-rolling-launch-testing-ament-cmake";
  version = "3.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_testing_ament_cmake/3.4.1-1.tar.gz";
    name = "3.4.1-1.tar.gz";
    sha256 = "84529852ee1f6dfe6d968024bf797753755d398a75ab7c7e7ac86f9f30fd6193";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright launch-testing python-cmake-module ];
  propagatedBuildInputs = [ ament-cmake-test launch-testing python-cmake-module ];
  nativeBuildInputs = [ ament-cmake ament-cmake-test launch-testing python-cmake-module ];

  meta = {
    description = "A package providing cmake functions for running launch tests from the build.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
