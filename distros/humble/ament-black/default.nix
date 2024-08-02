
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-ament-black";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_black-release/archive/release/humble/ament_black/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "630b19024c714b71ebed940babfdb2a19d75e6551936fa720ffe232c2ec87d2c";
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
