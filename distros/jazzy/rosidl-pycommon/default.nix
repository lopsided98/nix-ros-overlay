
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rosidl-parser }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-pycommon";
  version = "4.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/jazzy/rosidl_pycommon/4.6.6-1.tar.gz";
    name = "4.6.6-1.tar.gz";
    sha256 = "6d024c234657a8d8b4855fe0be68de15170f86cd0104793b071846d439868fb8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rosidl-parser ];

  meta = {
    description = "Common Python functions used by rosidl packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
