
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-neo-simulation2";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/neo_simulation2-release/archive/release/rolling/neo_simulation2/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "3e948417eb7c43e407b26681b902a0b1920d7fa7ab2c7c430e8fde4e8a468cb6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS-2 Simulation packages for neobotix robots'';
    license = with lib.licenses; [ mit ];
  };
}
