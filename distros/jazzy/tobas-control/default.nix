
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-quadprog }:
buildRosPackage {
  pname = "ros-jazzy-tobas-control";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_control/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "59a6720c590bbcd2ea8c578d7b7c1ca003d86073a4200d6bc7c0e22173136966";
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
