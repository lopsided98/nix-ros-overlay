
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, inverse-dynamics-solver, pluginlib }:
buildRosPackage {
  pname = "ros-humble-franka-inria-inverse-dynamics-solver";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/humble/franka_inria_inverse_dynamics_solver/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "61d391235474b63b0b1aebae4d649815958a3a011f1bdd6cc41b3a9376279db5";
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
