
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-ros, pythonPackages, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-examples-tf2-py";
  version = "0.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/examples_tf2_py/0.13.4-1.tar.gz";
    name = "0.13.4-1.tar.gz";
    sha256 = "72f06315f7360358869c7e0b205f8d3938535658bbd9950e54c030e556a4a76a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch-ros tf2-ros ];

  meta = {
    description = ''Has examples of using the tf2 Python API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
