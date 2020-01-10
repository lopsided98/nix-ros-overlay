
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-crystal-ament-virtualenv";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/esol-community/ament_virtualenv-release/archive/release/crystal/ament_virtualenv/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "82afd26af944b88a6bc229801567b64ae62e43954ad8b870cb66b82436b1e3e4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''Bundle python requirements in a ament package via virtualenv.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
