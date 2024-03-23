
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, nao-lola-sensor-msgs, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-nao-button-sim";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_button_sim-release/archive/release/rolling/nao_button_sim/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "fcaf623a42bad95f7efd595e4f6b3da7a2cf1e25c5e813be99e35c373b124d4f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ nao-lola-sensor-msgs ];

  meta = {
    description = "Allows simulating button presses through command line interface";
    license = with lib.licenses; [ asl20 ];
  };
}
