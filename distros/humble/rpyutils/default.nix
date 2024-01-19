
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-rpyutils";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rpyutils-release/archive/release/humble/rpyutils/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "d35a40fddeb91bd9d436fffbf8081b71fec4a60934be2f05555519f62cccb81c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];

  meta = {
    description = ''Package containing various utility types and functions for Python'';
    license = with lib.licenses; [ asl20 ];
  };
}
