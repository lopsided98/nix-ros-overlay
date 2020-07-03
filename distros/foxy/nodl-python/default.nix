
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-nodl-python";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/canonical/nodl-release/archive/release/foxy/nodl_python/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "db40ecbcd1b62723ab93ca078a956379581350172722e8152042373aac70d569";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml ];

  meta = {
    description = ''Implementation of the NoDL API in Python.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
