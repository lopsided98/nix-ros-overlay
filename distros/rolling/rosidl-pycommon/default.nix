
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rosidl-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidl-pycommon";
  version = "4.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_pycommon/4.7.0-1.tar.gz";
    name = "4.7.0-1.tar.gz";
    sha256 = "82f390b3d2deb98b0552e62c9a89535e0d98852be79a50b3c8242886cb4b214e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rosidl-parser ];

  meta = {
    description = "Common Python functions used by rosidl packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
