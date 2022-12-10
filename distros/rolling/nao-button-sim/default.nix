
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, nao-sensor-msgs, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-nao-button-sim";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_button_sim-release/archive/release/rolling/nao_button_sim/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "2e810214a61ab1f7b1cbb36c09d7ba36db1de699826567ea901ca73364da2b5f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ nao-sensor-msgs ];

  meta = {
    description = ''Allows simulating button presses through command line interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
