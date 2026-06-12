
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-ros2-medkit-cmake";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/lyrical/ros2_medkit_cmake/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "4bb1348375f7f39c89f2a5d5c35bd8e9b16ac9ea601ad1414afa0e977b3af7ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared CMake modules for ros2_medkit packages (multi-distro compat, ccache, linting)";
    license = with lib.licenses; [ asl20 ];
  };
}
