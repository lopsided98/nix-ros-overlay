
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-quadprog }:
buildRosPackage {
  pname = "ros-jazzy-tobas-control";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_control/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "28962c02d38db62fabe0e00d1c1aa52c344a13bd1260da96df3b382b2318d06f";
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
