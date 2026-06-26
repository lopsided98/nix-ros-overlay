
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, inverse-dynamics-solver, pluginlib }:
buildRosPackage {
  pname = "ros-lyrical-franka-inria-inverse-dynamics-solver";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/lyrical/franka_inria_inverse_dynamics_solver/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "7dd59246ad4b5657c8a3f5a1aabb2d6a9b9caf04c4a65ff4118f31271ac08882";
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
