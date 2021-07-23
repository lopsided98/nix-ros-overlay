
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, nao-sensor-msgs, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-nao-button-sim";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/naosoccer_sim-release/archive/release/galactic/nao_button_sim/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "db559559fecfacc104af37bfb9bf8e451a3cc28ed71927b3c069513ebc2f7cba";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ nao-sensor-msgs ];

  meta = {
    description = ''Allows simulating button presses through command line interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
