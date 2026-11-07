
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-quadprog }:
buildRosPackage {
  pname = "ros-jazzy-tobas-control";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_control/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "c48ca29cb8a491e5e1733a9de4d1f62d55b8e751ce7d7857b3e54a117609db8c";
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
