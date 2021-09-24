
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-neo-simulation2";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/neobotix/neo_simulation2-release/archive/release/galactic/neo_simulation2/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "559fa4b9d33ae08010ecf815ef935f37cdf53a061af0d6c2afc7824c7950bd56";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS-2 Simulation packages for neobotix robots'';
    license = with lib.licenses; [ mit ];
  };
}
