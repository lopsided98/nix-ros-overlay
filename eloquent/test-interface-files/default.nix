
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-eloquent-test-interface-files";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/test_interface_files-release/archive/release/eloquent/test_interface_files/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "93abe1ac4c557eed41f48d196dd4e27f8623e9e5b96a1e10de1b031aefed87d0";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''A package containing message definitions and fixtures used exclusively for testing purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
