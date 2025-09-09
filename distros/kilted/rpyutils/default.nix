
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-rpyutils";
  version = "0.6.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rpyutils-release/archive/release/kilted/rpyutils/0.6.2-2.tar.gz";
    name = "0.6.2-2.tar.gz";
    sha256 = "7c28ca9c0c2a680a7ded5f9b95e26b6ba63ffe4e9a78fbcbdf3c0b71448621e2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "Package containing various utility types and functions for Python";
    license = with lib.licenses; [ asl20 ];
  };
}
