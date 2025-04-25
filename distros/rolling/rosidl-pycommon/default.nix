
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages, rosidl-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidl-pycommon";
  version = "4.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_pycommon/4.9.4-1.tar.gz";
    name = "4.9.4-1.tar.gz";
    sha256 = "5b3dbe204712bb949271a5320a8c233e3c1a187360652772ce7deb479c1c4f7f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rosidl-parser ];

  meta = {
    description = "Common Python functions used by rosidl packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
