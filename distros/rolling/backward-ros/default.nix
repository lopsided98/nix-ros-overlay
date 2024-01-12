
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, elfutils }:
buildRosPackage {
  pname = "ros-rolling-backward-ros";
  version = "1.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/rolling/backward_ros/1.0.2-4.tar.gz";
    name = "1.0.2-4.tar.gz";
    sha256 = "02fb988d5bf6e2ac407673aec803615ae0779d0333ad7a12b6222546216cfe5b";
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
