
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-galactic-test-interface-files";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/test_interface_files-release/archive/release/galactic/test_interface_files/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "4f3fc5d8c83dc309effa56b0cf93508bc62afc5a40d9adb61e33607337335152";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''A package containing message definitions and fixtures used exclusively for testing purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
