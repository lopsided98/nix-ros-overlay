
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-rtabmap-python";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_python/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "5edc09a1d004a094afc601da63975761a0dc19b44194e454dddab85c959bf805";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''RTAB-Map's python package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
