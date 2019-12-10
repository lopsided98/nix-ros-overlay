
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-ament-virtualenv";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/esol-community/ament_virtualenv-release/archive/release/dashing/ament_virtualenv/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "532ca91377757ebd0f484270db7484d41a927318192c70f49e16d778943bc427";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''Bundle python requirements in a ament package via virtualenv.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
