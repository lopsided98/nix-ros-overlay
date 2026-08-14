
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-generate-parameter-library-py";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/kilted/generate_parameter_library_py/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "35953df4a81573656cba09fefa671d533ca6472f1dcef64be3cf8b295cfbd886";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ python3 python3Packages.jinja2 python3Packages.pyyaml python3Packages.typeguard ];

  meta = {
    description = "Python to generate ROS parameter library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
