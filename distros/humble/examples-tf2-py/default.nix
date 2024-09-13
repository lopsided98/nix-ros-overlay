
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-ros, pythonPackages, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-examples-tf2-py";
  version = "0.25.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/examples_tf2_py/0.25.8-1.tar.gz";
    name = "0.25.8-1.tar.gz";
    sha256 = "544acbb107041b44f9804c6eb45c2a4473330981578ddb7076b2763ee1919896";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch-ros tf2-ros-py ];

  meta = {
    description = "Has examples of using the tf2 Python API.";
    license = with lib.licenses; [ asl20 ];
  };
}
