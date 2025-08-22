
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-generate-parameter-library-py";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/jazzy/generate_parameter_library_py/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "a4506acbdc2cfc46db6dbb99551d2ae96528c45fed4eca20c7bebb07926a2139";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ python3 python3Packages.jinja2 python3Packages.pyyaml python3Packages.typeguard ];

  meta = {
    description = "Python to generate ROS parameter library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
