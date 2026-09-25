
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-command-msgs-adapter, tobas-keyboard, tobas-mission-items, tobas-mission-msgs, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-keyboard-teleop";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_keyboard_teleop/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "cb48f0e75f69c60c4834bcff7303029de6e95c5ed66afc3d1cbd8362920eb4fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-command-msgs-adapter tobas-keyboard tobas-mission-items tobas-mission-msgs tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Keyboard teleoperation node that publishes position and yaw commands.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
