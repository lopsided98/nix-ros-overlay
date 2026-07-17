
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-kilted-test-interface-files";
  version = "0.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/test_interface_files-release/archive/release/kilted/test_interface_files/0.13.1-1.tar.gz";
    name = "0.13.1-1.tar.gz";
    sha256 = "d0aa295f62b1c7d74c3b4bf20a11832e02462c2f76301da7bdd7738c839a90dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "A package containing message definitions and fixtures used exclusively for testing purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
