
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-test-interface-files";
  version = "0.11.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/test_interface_files-release/archive/release/jazzy/test_interface_files/0.11.0-3.tar.gz";
    name = "0.11.0-3.tar.gz";
    sha256 = "7568c6e5f6e5d6f2e3fd16c6392147b169036b2dd69f483101dadeefc0a1cdd5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "A package containing message definitions and fixtures used exclusively for testing purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
