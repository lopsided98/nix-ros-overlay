
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-picknik-ament-copyright";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_ament_copyright-release/archive/release/humble/picknik_ament_copyright/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "e76e4c6abe5f1595846a406356531b74fb495e190afc16ed26742dd4600c58d4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-copyright ];

  meta = {
    description = ''Check PickNik-specific copyright headers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
