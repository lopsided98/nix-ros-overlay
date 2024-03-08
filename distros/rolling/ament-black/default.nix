
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-black";
  version = "0.2.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_black-release/archive/release/rolling/ament_black/0.2.4-2.tar.gz";
    name = "0.2.4-2.tar.gz";
    sha256 = "467e2fe912a4e7cdd77282cc9b2b9322fa258d4bb9a91b86a52e1371f027f64d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.unidiff python3Packages.uvloop pythonPackages.black ];

  meta = {
    description = ''The ability to check code against style conventions using
    black and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
