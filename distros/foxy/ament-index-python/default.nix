
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-ament-index-python";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/foxy/ament_index_python/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "e10be3bd22652636b47c97f29f741952a024ba3d0c23d73c6c0a80b9e2b11643";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''Python API to access the ament resource index.'';
    license = with lib.licenses; [ asl20 ];
  };
}
