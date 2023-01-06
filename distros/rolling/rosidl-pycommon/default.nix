
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rosidl-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidl-pycommon";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_pycommon/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "9386e7072b831377f49d495bc8ebab13d247fd97d7d604998b21167d7ca51ac2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rosidl-parser ];

  meta = {
    description = ''Common Python functions used by rosidl packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
