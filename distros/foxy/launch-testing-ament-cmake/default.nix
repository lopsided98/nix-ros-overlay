
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-test, launch-testing, python-cmake-module }:
buildRosPackage {
  pname = "ros-foxy-launch-testing-ament-cmake";
  version = "0.10.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/foxy/launch_testing_ament_cmake/0.10.4-1.tar.gz";
    name = "0.10.4-1.tar.gz";
    sha256 = "12edef2a3132398513062cda359cf1a7849871dfcc933eef0724fc381ef00960";
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
