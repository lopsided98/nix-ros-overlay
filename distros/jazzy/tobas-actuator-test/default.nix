
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libsForQt5, tobas-dparam-client, tobas-drone-core, tobas-gui-common, tobas-qt-tools, tobas-rqt-bridge }:
buildRosPackage {
  pname = "ros-jazzy-tobas-actuator-test";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_actuator_test/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "89a8323771b47733e3e6ddd4ae826316b8cf6e0790b4a2724a6b0897f6f800eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ libsForQt5.qwt tobas-dparam-client tobas-drone-core tobas-gui-common tobas-qt-tools tobas-rqt-bridge ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt application for testing actuators and visualizing actuator commands.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
