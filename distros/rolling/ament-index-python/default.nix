
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-index-python";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/rolling/ament_index_python/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "731728f6c849a16a2e45840945ad026cd1054942856e2c1bc07d370d1e8a3db7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''Python API to access the ament resource index.'';
    license = with lib.licenses; [ asl20 ];
  };
}
