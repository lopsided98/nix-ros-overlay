
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, gazebo-ros-pkgs, ros2launch }:
buildRosPackage {
  pname = "ros-dashing-dolly-gazebo";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/chapulina/dolly-release/archive/release/dashing/dolly_gazebo/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "64b39dcb64d1b2d467e971c445d6111add8194ba03ac90afe4581976235de2bd";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dolly-follow gazebo-ros-pkgs ros2launch ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch Gazebo simulation with Dolly robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
