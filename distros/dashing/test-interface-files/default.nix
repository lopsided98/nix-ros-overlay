
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-test-interface-files";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/test_interface_files-release/archive/release/dashing/test_interface_files/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "7092cfcf471bdc3517b4e27394a5de9fd1713c8ecbf69b8d7f948bb8c495489b";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''A package containing message definitions and fixtures used exclusively for testing purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
