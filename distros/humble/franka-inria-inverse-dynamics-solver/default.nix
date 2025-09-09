
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, franka-description, inverse-dynamics-solver, pluginlib }:
buildRosPackage {
  pname = "ros-humble-franka-inria-inverse-dynamics-solver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/humble/franka_inria_inverse_dynamics_solver/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ad5b99d5d91901203724c6bdee88e3645680440ddb530170944b72c732325355";
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
