
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-launch-pal";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/pal-gbp/launch_pal-release/archive/release/foxy/launch_pal/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "40d7edd6eb447e7a05dbb6e0b42159c722caf4882a056e656542404ca2c0e954";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch python3Packages.pyyaml ];

  meta = {
    description = ''Utilities for launch files'';
    license = with lib.licenses; [ "Apache-1.0" ];
  };
}
