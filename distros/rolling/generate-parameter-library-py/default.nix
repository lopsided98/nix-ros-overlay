
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-generate-parameter-library-py";
  version = "0.3.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/rolling/generate_parameter_library_py/0.3.9-1.tar.gz";
    name = "0.3.9-1.tar.gz";
    sha256 = "a3a0d521e35671d8b946fe748cec7551baa52347b366c312d7e4d602d86d96a8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ python3 python3Packages.jinja2 python3Packages.pyyaml python3Packages.typeguard ];

  meta = {
    description = "Python to generate ROS parameter library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
