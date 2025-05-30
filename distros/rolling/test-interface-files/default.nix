
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-test-interface-files";
  version = "0.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/test_interface_files-release/archive/release/rolling/test_interface_files/0.14.0-1.tar.gz";
    name = "0.14.0-1.tar.gz";
    sha256 = "310a8b1adb76b99fe57ff2e9b84bf7cb9eae0e788a25493a30809ecf853f1e2b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "A package containing message definitions and fixtures used exclusively for testing purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
