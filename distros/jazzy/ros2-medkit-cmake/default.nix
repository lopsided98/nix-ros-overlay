
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-cmake";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_cmake/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "db7151a8b3516f801221cf2e9db24cbb72ae57be8c120fcb70daa288098a2e47";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared CMake modules for ros2_medkit packages (multi-distro compat, ccache, linting)";
    license = with lib.licenses; [ asl20 ];
  };
}
