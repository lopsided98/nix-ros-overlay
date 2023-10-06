
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rosidl-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidl-pycommon";
  version = "4.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_pycommon/4.4.1-1.tar.gz";
    name = "4.4.1-1.tar.gz";
    sha256 = "241735da5b68391e0cf8f5b9fc24f5025d44c094dfe57cecf9f35b34c16ffbbf";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rosidl-parser ];

  meta = {
    description = ''Common Python functions used by rosidl packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
