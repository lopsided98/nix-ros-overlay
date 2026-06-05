
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-test-interface-files";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/test_interface_files-release/archive/release/jazzy/test_interface_files/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "69de764961a1a24aaf6f0b64a49dcfe028a9381b8c0a0a653683020c7f5541fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "A package containing message definitions and fixtures used exclusively for testing purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
