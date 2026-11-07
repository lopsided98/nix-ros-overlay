
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rosidl-parser }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-pycommon";
  version = "4.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/jazzy/rosidl_pycommon/4.6.10-1.tar.gz";
    name = "4.6.10-1.tar.gz";
    sha256 = "052fc75d6ac06434b9882d5b73001140dcf8049b6a87be93cd4c0c78f804769c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rosidl-parser ];

  meta = {
    description = "Common Python functions used by rosidl packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
