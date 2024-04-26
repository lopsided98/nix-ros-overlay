
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, nao-lola-sensor-msgs, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-nao-button-sim";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_button_sim-release/archive/release/rolling/nao_button_sim/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "46a3615e48e204e6c480143970911cf7fe7d0f0a16338b971049067527d3032d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ nao-lola-sensor-msgs ];

  meta = {
    description = "Allows simulating button presses through command line interface";
    license = with lib.licenses; [ asl20 ];
  };
}
