
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-clearpath-config";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_config-release/archive/release/humble/clearpath_config/0.2.10-1.tar.gz";
    name = "0.2.10-1.tar.gz";
    sha256 = "dc8bc026912cde3be4a02de678948634e8726aa7ef6e56289d1ce616695d73ae";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyyaml ];

  meta = {
    description = "Clearpath Configuration YAML Parser and Writer";
    license = with lib.licenses; [ bsd3 ];
  };
}
