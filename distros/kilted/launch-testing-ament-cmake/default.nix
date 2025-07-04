
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-test, launch-testing }:
buildRosPackage {
  pname = "ros-kilted-launch-testing-ament-cmake";
  version = "3.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/kilted/launch_testing_ament_cmake/3.8.2-1.tar.gz";
    name = "3.8.2-1.tar.gz";
    sha256 = "1f6b641e63541fe86a3199c9034860dab7182e928effb53bd4945fb29d545525";
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
