
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-command-msgs-adapter, tobas-drone-core, tobas-eigen-conversions, tobas-gazebo-common, tobas-gazebo-msgs, tobas-gazebo-tools, tobas-gui-common, tobas-kdl-parser, tobas-msgs-adapter, tobas-property-client, tobas-qt-tools, tobas-ros2-tools, tobas-rqt-bridge, tobas-uadf }:
buildRosPackage {
  pname = "ros-jazzy-tobas-simulation-gui";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_simulation_gui/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "9bf1916da59912dc7b83999180c1fc5e9ccf738ed020422b601972fbf2a0ba7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-command-msgs-adapter tobas-drone-core tobas-eigen-conversions tobas-gazebo-common tobas-gazebo-msgs tobas-gazebo-tools tobas-gui-common tobas-kdl-parser tobas-msgs-adapter tobas-property-client tobas-qt-tools tobas-ros2-tools tobas-rqt-bridge tobas-uadf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt application for configuring, launching, and monitoring Tobas simulations.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
