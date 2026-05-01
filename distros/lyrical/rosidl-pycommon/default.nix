
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages, rosidl-parser }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-pycommon";
  version = "5.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/lyrical/rosidl_pycommon/5.2.0-3.tar.gz";
    name = "5.2.0-3.tar.gz";
    sha256 = "d610650ba39975046f7ca69d17251d0284d4522d10a963cafe425d550fb97681";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rosidl-parser ];

  meta = {
    description = "Common Python functions used by rosidl packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
