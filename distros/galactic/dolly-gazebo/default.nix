
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, gazebo-ros-pkgs, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-galactic-dolly-gazebo";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/chapulina/dolly-release/archive/release/galactic/dolly_gazebo/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "f62bc4a2a9713375423b01f40d3b172571c26fb37f4b587dee56890127674f71";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dolly-follow gazebo-ros-pkgs ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch Gazebo simulation with Dolly robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
