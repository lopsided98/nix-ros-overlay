
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, python3, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-generate-parameter-library-py";
  version = "0.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/iron/generate_parameter_library_py/0.3.7-1.tar.gz";
    name = "0.3.7-1.tar.gz";
    sha256 = "34d0686416877e62693352cd77d7490ccec6ac2fc2ac56d15ce9bc846dbfac62";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ python3 python3Packages.jinja2 python3Packages.pyyaml python3Packages.typeguard ];

  meta = {
    description = ''Python to generate ROS parameter library.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
