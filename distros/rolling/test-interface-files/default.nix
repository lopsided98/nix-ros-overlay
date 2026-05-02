
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-test-interface-files";
  version = "0.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/test_interface_files-release/archive/release/rolling/test_interface_files/0.14.1-2.tar.gz";
    name = "0.14.1-2.tar.gz";
    sha256 = "8024ec47d1a8e498001b4028e4f99c7ee331820cc0560e2f1edeeb3363fa8ddf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "A package containing message definitions and fixtures used exclusively for testing purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
