
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, nao-sensor-msgs, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-nao-button-sim";
  version = "0.1.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_button_sim-release/archive/release/rolling/nao_button_sim/0.1.1-4.tar.gz";
    name = "0.1.1-4.tar.gz";
    sha256 = "3b815d3335333cda164deacf7208b4ea367e98e125844d4a832dbcbe4c8b3bc0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ nao-sensor-msgs ];

  meta = {
    description = ''Allows simulating button presses through command line interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
