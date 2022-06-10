
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python39Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-ament-black";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/Timple/ament_black-release/archive/release/galactic/ament_black/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "1ced1fa05353c97580ce6d0a5fa784c338d94b4b2f31172e636d30d0e30dd72f";
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
