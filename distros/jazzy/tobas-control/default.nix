
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-quadprog }:
buildRosPackage {
  pname = "ros-jazzy-tobas-control";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_control/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "a2e374134aab6c754fc7b7e62ec7efa009fb01f40a52e478cd50fee7adc91807";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-quadprog ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Control-system algorithms including state-space models, optimal control, Kalman filtering, MPC, and PID.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
