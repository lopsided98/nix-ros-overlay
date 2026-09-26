
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-eigen-tools, tobas-geographic, tobas-kdl-conversions, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eskf";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eskf/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "e19441a73cf681c3e383bba86ba2e3e84ded0031ca7ec75d1ee546e72f029baf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-debug-msgs-adapter tobas-eigen-tools tobas-geographic tobas-kdl-conversions tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Error-state Kalman filter library and ROS 2 node for vehicle state estimation.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
