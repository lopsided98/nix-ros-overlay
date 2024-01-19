
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, ros-ign-bridge, ros-ign-gazebo, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-humble-dolly-ignition";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/humble/dolly_ignition/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "9b303a602885ce0998b2e53763d4a65f5ea698876ff50bc8f11a642104614283";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dolly-follow ros-ign-bridge ros-ign-gazebo ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch Ignition simulation with Dolly robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
