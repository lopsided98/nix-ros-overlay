
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, python3, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-generate-parameter-library-py";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/rolling/generate_parameter_library_py/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "3fdde385bc532946bf79cf1ee2c91a058c975d7c12d8bbbbe00f5dc0822a876f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ python3 python3Packages.jinja2 python3Packages.pyyaml python3Packages.typeguard ];

  meta = {
    description = ''Python to generate ROS parameter library.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
