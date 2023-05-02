
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rosidl-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidl-pycommon";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_pycommon/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "c5adad66ffaf9f42fedae0aeb3fec3c5e946c443f1ebf4c574e2a93cab1ee91c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rosidl-parser ];

  meta = {
    description = ''Common Python functions used by rosidl packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
