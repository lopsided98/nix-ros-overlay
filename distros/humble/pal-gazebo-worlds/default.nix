
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-pal-gazebo-worlds";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gazebo_worlds-ros2-release/archive/release/humble/pal_gazebo_worlds/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "dee25b1a7adce511c32314b827d3cf9c1da46dec014e081c70637bb1f91f28da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Simulation worlds for PAL robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
