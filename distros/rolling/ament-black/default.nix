
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-black";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_black-release/archive/release/rolling/ament_black/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "8609d05b23e3cd3d8b1a77c30ca1bc38e11c8d5e0bd4ab7ab5cb05a5fdb71a2c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.unidiff python3Packages.uvloop pythonPackages.black ];

  meta = {
    description = "The ability to check code against style conventions using
    black and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}
