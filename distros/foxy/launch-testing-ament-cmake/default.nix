
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-test, launch-testing, python-cmake-module }:
buildRosPackage {
  pname = "ros-foxy-launch-testing-ament-cmake";
  version = "0.10.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/foxy/launch_testing_ament_cmake/0.10.9-1.tar.gz";
    name = "0.10.9-1.tar.gz";
    sha256 = "82de4217e1ad90742f53598f74edf621a434caca05fcca4e65ccab3e9428de3b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright launch-testing ];
  propagatedBuildInputs = [ ament-cmake-test launch-testing python-cmake-module ];
  nativeBuildInputs = [ ament-cmake ament-cmake-test launch-testing python-cmake-module ];

  meta = {
    description = ''A package providing cmake functions for running launch tests from the build.'';
    license = with lib.licenses; [ asl20 ];
  };
}
