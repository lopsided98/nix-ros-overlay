
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-test-interface-files";
  version = "0.11.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/test_interface_files-release/archive/release/rolling/test_interface_files/0.11.0-2.tar.gz";
    name = "0.11.0-2.tar.gz";
    sha256 = "6b5ec41e7b80fb41be0885f05f5c82376c1e413ef6aedf47ba1cc773bbe4a359";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''A package containing message definitions and fixtures used exclusively for testing purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
