
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, nao-lola-sensor-msgs, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-nao-button-sim";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_button_sim-release/archive/release/lyrical/nao_button_sim/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "585a0ff3d97382124cbe750ea935e6c522b5b80c637fd725f61048a8d786da1e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ nao-lola-sensor-msgs ];

  meta = {
    description = "Allows simulating button presses through command line interface";
    license = with lib.licenses; [ asl20 ];
  };
}
