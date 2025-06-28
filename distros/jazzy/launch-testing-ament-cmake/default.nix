
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-test, launch-testing, python-cmake-module }:
buildRosPackage {
  pname = "ros-jazzy-launch-testing-ament-cmake";
  version = "3.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/jazzy/launch_testing_ament_cmake/3.4.5-1.tar.gz";
    name = "3.4.5-1.tar.gz";
    sha256 = "d1c0e95acf9bd7702f3bdaa1f2a7a7fa3ed38dc4cbc205f9781ae697e7b5d717";
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
