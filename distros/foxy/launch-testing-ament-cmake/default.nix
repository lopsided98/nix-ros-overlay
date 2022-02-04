
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-test, launch-testing, python-cmake-module }:
buildRosPackage {
  pname = "ros-foxy-launch-testing-ament-cmake";
  version = "0.10.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/foxy/launch_testing_ament_cmake/0.10.8-2.tar.gz";
    name = "0.10.8-2.tar.gz";
    sha256 = "d457889a8c0d4ce685748c75d92908164d548d12a9df6348832336f661962c5c";
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
