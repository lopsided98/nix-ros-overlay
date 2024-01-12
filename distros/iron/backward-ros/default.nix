
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, elfutils }:
buildRosPackage {
  pname = "ros-iron-backward-ros";
  version = "1.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/iron/backward_ros/1.0.2-5.tar.gz";
    name = "1.0.2-5.tar.gz";
    sha256 = "08955348ede06a7fd25a94d195453e14307b2a5e5df14f6321823070bf98a2c8";
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
