
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, ros-ign-bridge, ros-ign-gazebo, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-galactic-dolly-ignition";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/chapulina/dolly-release/archive/release/galactic/dolly_ignition/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "a1e54f1fa28af34717e210b375edbd8f300806949251f9858875255c297aca7d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dolly-follow ros-ign-bridge ros-ign-gazebo ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch Ignition simulation with Dolly robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
