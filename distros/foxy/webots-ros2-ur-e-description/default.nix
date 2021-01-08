
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, urdf }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-ur-e-description";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_ur_e_description/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "9a978ad9ec233053ede854a98ef4e1848ddc31fa8b9d478f5a70d8e0169176f3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ urdf ];

  meta = {
    description = ''Universal Robot description for Webots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
