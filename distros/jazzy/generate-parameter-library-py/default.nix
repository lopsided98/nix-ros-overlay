
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-generate-parameter-library-py";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/jazzy/generate_parameter_library_py/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "ddb84ed3cb88291b8700ce1979a9e8eb027d69b72623857415579d86c4c7e90d";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ python3 python3Packages.jinja2 python3Packages.pyyaml python3Packages.typeguard ];

  meta = {
    description = "Python to generate ROS parameter library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
