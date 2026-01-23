
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, inverse-dynamics-solver, pluginlib }:
buildRosPackage {
  pname = "ros-jazzy-franka-inria-inverse-dynamics-solver";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/jazzy/franka_inria_inverse_dynamics_solver/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "b6964b4bd41509eff3fdad7fe63fb6d008f3acbb1868ee46591ed43ee73309c8";
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
