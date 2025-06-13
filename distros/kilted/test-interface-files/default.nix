
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-kilted-test-interface-files";
  version = "0.13.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/test_interface_files-release/archive/release/kilted/test_interface_files/0.13.0-2.tar.gz";
    name = "0.13.0-2.tar.gz";
    sha256 = "f972c2fda8b43bcc4ed3d36f06bcc55aba3e1ab48db00cd7c91c5b3251e63781";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "A package containing message definitions and fixtures used exclusively for testing purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
