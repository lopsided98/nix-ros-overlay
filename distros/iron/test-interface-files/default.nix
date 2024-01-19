
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-iron-test-interface-files";
  version = "0.10.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/test_interface_files-release/archive/release/iron/test_interface_files/0.10.2-3.tar.gz";
    name = "0.10.2-3.tar.gz";
    sha256 = "1ec815b198c9fb3064fcd1338eddafa293823b08e55c52385f1d1750f5d62a90";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''A package containing message definitions and fixtures used exclusively for testing purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
