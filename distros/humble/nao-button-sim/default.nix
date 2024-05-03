
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, nao-sensor-msgs, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-nao-button-sim";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_button_sim-release/archive/release/humble/nao_button_sim/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "d095e863f718a0adbf1c4af961964c320f73942905ac5badf7dedf3ca781b5a4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ nao-sensor-msgs ];

  meta = {
    description = "Allows simulating button presses through command line interface";
    license = with lib.licenses; [ asl20 ];
  };
}
