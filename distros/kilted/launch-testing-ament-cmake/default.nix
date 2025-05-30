
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-test, launch-testing }:
buildRosPackage {
  pname = "ros-kilted-launch-testing-ament-cmake";
  version = "3.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/kilted/launch_testing_ament_cmake/3.8.1-2.tar.gz";
    name = "3.8.1-2.tar.gz";
    sha256 = "de0e0bbe9b63c606533ef2fd647f7ea31265156aa81090be0139473b0d3a93d9";
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
