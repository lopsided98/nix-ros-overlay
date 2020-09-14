
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, urdf }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-ur-e-description";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_ur_e_description/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "c1b21af74ff8bc54ea90f6e449fc063673e3a9dac2e89036a95b875bc33c5c35";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ urdf ];

  meta = {
    description = ''Universal Robot description for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
