
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, franka-description, inverse-dynamics-solver, pluginlib }:
buildRosPackage {
  pname = "ros-humble-franka-inria-inverse-dynamics-solver";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/humble/franka_inria_inverse_dynamics_solver/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "4bd4fc56f7ea2566e7bf90f3e0132d4bb4d13603866d5b309e85cb18b98c2b06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen franka-description inverse-dynamics-solver pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A C++ library implementing the inverse dynamics solver for the Franka Emika Panda (FER) real robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
