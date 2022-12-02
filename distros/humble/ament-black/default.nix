
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python39Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-ament-black";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/Timple/ament_black-release/archive/release/humble/ament_black/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "4d23c0ab86374546dc80ad9960e62ec571560068d3b0f6549e39470749c2f9f8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python39Packages.unidiff pythonPackages.black ];

  meta = {
    description = ''The ability to check code against style conventions using
    black and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
