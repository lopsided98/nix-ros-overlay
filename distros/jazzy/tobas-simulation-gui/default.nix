
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-command-msgs-adapter, tobas-drone-core, tobas-eigen-conversions, tobas-gazebo-common, tobas-gazebo-msgs, tobas-gazebo-tools, tobas-gui-common, tobas-kdl-parser, tobas-msgs-adapter, tobas-property-client, tobas-qt-tools, tobas-ros2-tools, tobas-rqt-bridge, tobas-uadf }:
buildRosPackage {
  pname = "ros-jazzy-tobas-simulation-gui";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_simulation_gui/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "7ec9832f273e50dbb21f7bb3af85b1f26f8c72d128c1d9c4d70b91c12c4523bb";
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
