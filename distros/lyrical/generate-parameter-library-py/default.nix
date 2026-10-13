
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-generate-parameter-library-py";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/lyrical/generate_parameter_library_py/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "5d3b429aed4fead99daf5d859ad49a90e2cf95c3ec33d4019f96d6f029e3155e";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ python3 python3Packages.jinja2 python3Packages.pyyaml python3Packages.typeguard ];

  meta = {
    description = "Python to generate ROS parameter library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
