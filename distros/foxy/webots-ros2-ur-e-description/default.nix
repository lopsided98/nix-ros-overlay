
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, urdf }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-ur-e-description";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_ur_e_description/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "c1fa4aeeebd232ab5ad2c2710c03da2c07f5f415a44be4477c0bb27736d0471d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ urdf ];

  meta = {
    description = ''Universal Robot description for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
