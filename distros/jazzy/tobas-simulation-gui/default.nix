
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-command-msgs-adapter, tobas-drone-core, tobas-eigen-conversions, tobas-gazebo-common, tobas-gazebo-msgs, tobas-gazebo-tools, tobas-gui-common, tobas-kdl-parser, tobas-msgs-adapter, tobas-property-client, tobas-qt-tools, tobas-ros2-tools, tobas-rqt-bridge, tobas-uadf }:
buildRosPackage {
  pname = "ros-jazzy-tobas-simulation-gui";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_simulation_gui/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "d0ccd68b56af4f83cc9fa693768419196e02079a8cb30b83b6b84de72a0b5438";
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
