
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-ament-black";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_black-release/archive/release/iron/ament_black/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "286210de9813f31a17bf79e5617b7b11236d24d855a7fbba6ed83cc47ab9c510";
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
