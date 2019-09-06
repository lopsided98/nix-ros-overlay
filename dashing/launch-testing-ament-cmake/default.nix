
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake-core, launch-testing, python-cmake-module, ament-cmake-test, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-launch-testing-ament-cmake";
  version = "0.8.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/dashing/launch_testing_ament_cmake/0.8.5-3.tar.gz";
    name = "0.8.5-3.tar.gz";
    sha256 = "6c44c04823918be6e074da05103457031eec80ff8ae06a5e253391c734487791";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-copyright ament-cmake-pytest ];
  propagatedBuildInputs = [ python-cmake-module ament-cmake-test launch-testing ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''A package providing cmake functions for running launch tests from the build.'';
    license = with lib.licenses; [ asl20 ];
  };
}
