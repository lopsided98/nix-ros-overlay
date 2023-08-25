
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rosidl-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidl-pycommon";
  version = "4.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_pycommon/4.3.1-1.tar.gz";
    name = "4.3.1-1.tar.gz";
    sha256 = "2d8edd9f5214682bb0d2cf758e00bbe68bb7da3fc0b504d96885fcb359bf680b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rosidl-parser ];

  meta = {
    description = ''Common Python functions used by rosidl packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
