
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-pal-gazebo-worlds";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gazebo_worlds-ros2-release/archive/release/humble/pal_gazebo_worlds/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "b60d6fffdeba1f9aca2058d03adddfd999318c56aafd91387eb584a1ce3df253";
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
