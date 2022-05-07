
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-ros, pythonPackages, tf2-ros-py }:
buildRosPackage {
  pname = "ros-galactic-examples-tf2-py";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/galactic/examples_tf2_py/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "36dbdc9c6a5dd2b66af43e8162bb16e8e5d542e12c9042eaf8930fffed535684";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch-ros tf2-ros-py ];

  meta = {
    description = ''Has examples of using the tf2 Python API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
