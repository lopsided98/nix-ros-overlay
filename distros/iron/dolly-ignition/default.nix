
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, ros-ign-bridge, ros-ign-gazebo, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-iron-dolly-ignition";
  version = "0.4.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/iron/dolly_ignition/0.4.0-5.tar.gz";
    name = "0.4.0-5.tar.gz";
    sha256 = "5ff6e0aba8cf934db7658645619edecda2372a725ed50b0e561a31f4b801b7fb";
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
