
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-test, launch-testing }:
buildRosPackage {
  pname = "ros-rolling-launch-testing-ament-cmake";
  version = "3.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_testing_ament_cmake/3.8.1-1.tar.gz";
    name = "3.8.1-1.tar.gz";
    sha256 = "7c1ba9f4a0b2d6324730e4572e54150882bdbec5642f502a66e7646f3eef0d02";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright launch-testing ];
  propagatedBuildInputs = [ ament-cmake-test launch-testing ];
  nativeBuildInputs = [ ament-cmake ament-cmake-test launch-testing ];

  meta = {
    description = "A package providing cmake functions for running launch tests from the build.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
