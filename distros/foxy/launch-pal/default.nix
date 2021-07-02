
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-launch-pal";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/launch_pal-release/archive/release/foxy/launch_pal/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "3487c6fbe6e9af8269bca39c514bc141151d850a89d20e6fd6362faa6694f8e0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch python3Packages.pyyaml ];

  meta = {
    description = ''Utilities for launch files'';
    license = with lib.licenses; [ "Apache-1.0" ];
  };
}
