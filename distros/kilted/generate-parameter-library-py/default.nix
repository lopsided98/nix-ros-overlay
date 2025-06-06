
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-generate-parameter-library-py";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/kilted/generate_parameter_library_py/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "cfc0bfb45e6ce1888914ff557a3e0d9a4c22a0bbc6f4d67bb60fe3b7d753aa6c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ python3 python3Packages.jinja2 python3Packages.pyyaml python3Packages.typeguard ];

  meta = {
    description = "Python to generate ROS parameter library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
