
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-ignition-bringup, turtlebot4-ignition-gui-plugins, turtlebot4-ignition-toolbox }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-simulator";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/humble/turtlebot4_simulator/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "115f69a45730f80728a1e1dd715bd178e7ea7ca2681504a9246a5a1dab78d93c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot4-ignition-bringup turtlebot4-ignition-gui-plugins turtlebot4-ignition-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TODO: Package description";
    license = with lib.licenses; [ asl20 ];
  };
}
