
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-ros, pythonPackages, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-examples-tf2-py";
  version = "0.13.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/examples_tf2_py/0.13.10-1.tar.gz";
    name = "0.13.10-1.tar.gz";
    sha256 = "908d0f40c9183ab68eba90170e76ec5d57d26df862f41b363cacf33e30c14661";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch-ros tf2-ros ];

  meta = {
    description = ''Has examples of using the tf2 Python API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
