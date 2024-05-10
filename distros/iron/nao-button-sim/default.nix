
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, nao-sensor-msgs, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-nao-button-sim";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_button_sim-release/archive/release/iron/nao_button_sim/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "d5e48902f726d33c41a663cc5e769aa3cc8277f9145b53e52ee5227a2a03b038";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ nao-sensor-msgs ];

  meta = {
    description = "Allows simulating button presses through command line interface";
    license = with lib.licenses; [ asl20 ];
  };
}
