
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages, rosidl-parser }:
buildRosPackage {
  pname = "ros-kilted-rosidl-pycommon";
  version = "4.9.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_pycommon/4.9.6-1.tar.gz";
    name = "4.9.6-1.tar.gz";
    sha256 = "2022980287cd90cfc6a657fcf630bf2fa7f9aea64fa5eb4c8e4d5c59a88ebff5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rosidl-parser ];

  meta = {
    description = "Common Python functions used by rosidl packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
