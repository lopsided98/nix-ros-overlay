
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-black";
  version = "0.2.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_black-release/archive/release/lyrical/ament_black/0.2.6-3.tar.gz";
    name = "0.2.6-3.tar.gz";
    sha256 = "4090066c7214c983e2ed202d87fe4508641bfe8fb4dd3126bdd21a8e5ab60406";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.black python3Packages.unidiff python3Packages.uvloop ];

  meta = {
    description = "The ability to check code against style conventions using
    black and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}
