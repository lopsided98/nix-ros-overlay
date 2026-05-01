
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-lyrical-test-interface-files";
  version = "0.14.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/test_interface_files-release/archive/release/lyrical/test_interface_files/0.14.1-3.tar.gz";
    name = "0.14.1-3.tar.gz";
    sha256 = "3d6c4adcb974fcfcd0870cf265b67cba1741e457f5bbadc61b068b0497df7217";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "A package containing message definitions and fixtures used exclusively for testing purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
