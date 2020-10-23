
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, urdf }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-ur-e-description";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_ur_e_description/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "7ef1c5c5f5ad672b0bda8bc7e448220d8e528779b6661d3e2542ebcd060b31d2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ urdf ];

  meta = {
    description = ''Universal Robot description for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
