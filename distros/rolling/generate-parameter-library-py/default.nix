
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, python3, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-generate-parameter-library-py";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/rolling/generate_parameter_library_py/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "13559998e1c545f58870941124d78e1db8002601a982203f049d5f45afef1936";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ python3 python3Packages.jinja2 python3Packages.pyyaml python3Packages.typeguard ];

  meta = {
    description = ''Python to generate ROS parameter library.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
