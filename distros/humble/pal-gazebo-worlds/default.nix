
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-pal-gazebo-worlds";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gazebo_worlds-ros2-release/archive/release/humble/pal_gazebo_worlds/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "83e63ebee2ce22783561ca40986054116689bbf592a0ad2c67afc38dc8934de2";
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
