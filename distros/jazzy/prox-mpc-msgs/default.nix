
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-prox-mpc-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/simone-contorno/prox_mpc-release/archive/release/jazzy/prox_mpc_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "2fa922e188dc7b3728d87e1e4f672a0c3dab8565f73e2d410d1f1d67c26ee39b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message contract for the ProxMPC stack: Obstacle and ObstacleArray
  carry tracked-obstacle id, position, velocity, radius, covariances, and sampled
  predicted positions from the obstacle tracker to the Nav2 controller plugin;
  SolverDiagnostics carries per-control-cycle NMPC/QP solver telemetry.
  Interface-only package; no node.";
    license = with lib.licenses; [ asl20 ];
  };
}
