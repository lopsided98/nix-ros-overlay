
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, nao-lola-sensor-msgs, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-nao-button-sim";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_button_sim-release/archive/release/kilted/nao_button_sim/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "3f91d275217e9017264baeb5f64451ec4fecced7e5e7cbf8f644835587be1434";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ nao-lola-sensor-msgs ];

  meta = {
    description = "Allows simulating button presses through command line interface";
    license = with lib.licenses; [ asl20 ];
  };
}
