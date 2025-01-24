
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-ros, python3Packages, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-examples-tf2-py";
  version = "0.25.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/examples_tf2_py/0.25.12-1.tar.gz";
    name = "0.25.12-1.tar.gz";
    sha256 = "b39886b0c512b773ca902f890c4dcb424da0403cef0b5e11251f04cbf36744c4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ launch-ros tf2-ros-py ];

  meta = {
    description = "Has examples of using the tf2 Python API.";
    license = with lib.licenses; [ asl20 ];
  };
}
