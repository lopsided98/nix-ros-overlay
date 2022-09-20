
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-foxy-test-interface-files";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/test_interface_files-release/archive/release/foxy/test_interface_files/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "90359bb4913f6efa4a517faedbe243fff61b4824c6ec894bb96e70e75f166275";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''A package containing message definitions and fixtures used exclusively for testing purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
