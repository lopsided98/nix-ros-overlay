
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, rosidl-typesupport-introspection-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-prox-mpc-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/simone-contorno/prox_mpc-release/archive/release/jazzy/prox_mpc_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "87b265434ed66c2089ff7ad2509da8b3a9dea0fff663db3420e51cbf2d6d0947";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-typesupport-introspection-cpp ];
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
