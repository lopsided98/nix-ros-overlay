
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-launch-pal";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/launch_pal-release/archive/release/foxy/launch_pal/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "0e27a958c5f16e0f0ad950baeeee1d39750522c20bbe43d20524589c756c9e22";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch python3Packages.pyyaml ];

  meta = {
    description = ''Utilities for launch files'';
    license = with lib.licenses; [ "Apache-1.0" ];
  };
}
