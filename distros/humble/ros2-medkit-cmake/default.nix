
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-ros2-medkit-cmake";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/humble/ros2_medkit_cmake/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "b2160cede9c13d86f5a5c50995e7ac0cedf04f00337884cf17e2fe3024960de6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared CMake modules for ros2_medkit packages (multi-distro compat, ccache, linting)";
    license = with lib.licenses; [ asl20 ];
  };
}
