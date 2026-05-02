
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, nao-lola-sensor-msgs, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-nao-button-sim";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_button_sim-release/archive/release/rolling/nao_button_sim/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "1195ee3ae38d00aff5279caee6eaed76bae0cb12570030a6c642088661c0aed1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ nao-lola-sensor-msgs ];

  meta = {
    description = "Allows simulating button presses through command line interface";
    license = with lib.licenses; [ asl20 ];
  };
}
