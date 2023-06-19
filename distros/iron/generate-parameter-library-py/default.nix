
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, python3, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-generate-parameter-library-py";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/iron/generate_parameter_library_py/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "698b2100f6fd967d94c4558e702675445b93ff8317ac685d448cb9bb6b5cfadf";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ python3 python3Packages.jinja2 python3Packages.pyyaml python3Packages.typeguard ];

  meta = {
    description = ''Python to generate ROS parameter library.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
