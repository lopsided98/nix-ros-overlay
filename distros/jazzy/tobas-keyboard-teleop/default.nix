
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-command-msgs-adapter, tobas-keyboard, tobas-mission-items, tobas-mission-msgs, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-keyboard-teleop";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_keyboard_teleop/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "6bd0c725344329e412cfe16d8e076b30e18b3913024e22f9144b9ed47014fbdb";
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
