
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pycodestyle, ament-xmllint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-pyflakes";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pyflakes/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "384ffdeb5ee75bea48729c60563784ba09515f1bbb2d6a15a5bda089ec76c940";
  };

  buildType = "ament_python";
  checkInputs = [ ament-pycodestyle ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyflakes ];

  meta = {
    description = "The ability to check code using pyflakes and generate xUnit test
    result files.";
    license = with lib.licenses; [ asl20 ];
  };
}
