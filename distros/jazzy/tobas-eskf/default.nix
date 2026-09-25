
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-eigen-tools, tobas-geographic, tobas-kdl-conversions, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eskf";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eskf/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "f6c90e211113ae1f56433e2dacf55493e00f8a31d39e11a48defae68e6d38497";
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
