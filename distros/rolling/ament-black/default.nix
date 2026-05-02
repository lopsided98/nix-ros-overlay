
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-black";
  version = "0.2.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_black-release/archive/release/rolling/ament_black/0.2.6-2.tar.gz";
    name = "0.2.6-2.tar.gz";
    sha256 = "1f2d242b36e0ebb48c653dac7f87534f2934bfe4ea35b2b25577b84b71b9d2e7";
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
