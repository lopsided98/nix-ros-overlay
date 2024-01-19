
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-humble-test-interface-files";
  version = "0.9.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/test_interface_files-release/archive/release/humble/test_interface_files/0.9.1-2.tar.gz";
    name = "0.9.1-2.tar.gz";
    sha256 = "d679abe08969464aad372b28f86d13953175f1346e3c42cca9f6651d9eed4430";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''A package containing message definitions and fixtures used exclusively for testing purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
