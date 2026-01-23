
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, inverse-dynamics-solver, pluginlib }:
buildRosPackage {
  pname = "ros-rolling-franka-inria-inverse-dynamics-solver";
  version = "6.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/rolling/franka_inria_inverse_dynamics_solver/6.0.1-2.tar.gz";
    name = "6.0.1-2.tar.gz";
    sha256 = "9397531824446fc465148e60315c07a957096f7d23738d1085e54f8c24246a22";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen inverse-dynamics-solver pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A C++ library implementing the inverse dynamics solver for the Franka Emika Panda (FER) real robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
