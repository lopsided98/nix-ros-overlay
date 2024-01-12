
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, gazebo-ros-pkgs, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-humble-dolly-gazebo";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/humble/dolly_gazebo/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "ba2e5c2490cb07a74a3c7f553f6c6d4205c7393d9e8dddfb4604fb20d87da7c0";
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
