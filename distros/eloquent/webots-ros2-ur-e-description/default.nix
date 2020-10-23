
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, urdf }:
buildRosPackage {
  pname = "ros-eloquent-webots-ros2-ur-e-description";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/eloquent/webots_ros2_ur_e_description/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "3544a60212eacf0c0a4c5f9da315f4f535e509f1e43c1d44a552d00d067dbd6e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ urdf ];

  meta = {
    description = ''Universal Robot description for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
