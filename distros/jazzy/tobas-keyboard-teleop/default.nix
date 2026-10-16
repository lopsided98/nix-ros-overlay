
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-command-msgs-adapter, tobas-keyboard, tobas-mission-items, tobas-mission-msgs, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-keyboard-teleop";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_keyboard_teleop/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "bb11d6e97296cc817e2b69e87c9e9ac0ba7eec7b1e901807e02b4a55f69abba3";
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
