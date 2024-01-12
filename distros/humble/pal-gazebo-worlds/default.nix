
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-pal-gazebo-worlds";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gazebo_worlds-ros2-release/archive/release/humble/pal_gazebo_worlds/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "f20e0b77b4d94f4120f0f8d10d178939841564a020c802be0d6386441a6ba115";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Simulation worlds for PAL robots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
