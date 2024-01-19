
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, elfutils }:
buildRosPackage {
  pname = "ros-humble-backward-ros";
  version = "1.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/humble/backward_ros/1.0.2-3.tar.gz";
    name = "1.0.2-3.tar.gz";
    sha256 = "59886b25866e95f9f140e10c38db103046b0229d0abd60684bc67eb334376d70";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ elfutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The backward_ros package is a ros wrapper of backward-cpp from https://github.com/bombela/backward-cpp'';
    license = with lib.licenses; [ mit ];
  };
}
