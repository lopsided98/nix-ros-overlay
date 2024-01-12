
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, gazebo-ros-pkgs, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-iron-dolly-gazebo";
  version = "0.4.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/iron/dolly_gazebo/0.4.0-5.tar.gz";
    name = "0.4.0-5.tar.gz";
    sha256 = "6301ce6ee645bb3222f422ed1a2aebe73afde99d4b654960f601ba1027d2451e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dolly-follow gazebo-ros-pkgs ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch Gazebo simulation with Dolly robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
