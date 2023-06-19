
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-ignition-bringup, turtlebot4-ignition-gui-plugins, turtlebot4-ignition-toolbox }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-simulator";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/humble/turtlebot4_simulator/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "58848c4638e007fc994b34cc2a93b26ffe85892e6cd4407bfa3a410aeb75a744";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot4-ignition-bringup turtlebot4-ignition-gui-plugins turtlebot4-ignition-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO: Package description'';
    license = with lib.licenses; [ asl20 ];
  };
}
