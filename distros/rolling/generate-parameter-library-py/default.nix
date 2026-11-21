
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-generate-parameter-library-py";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/rolling/generate_parameter_library_py/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "ad47b0fe3456a143b52e5a2ab55d73542009908876b0bf029c7ca806e6de4cb0";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.packaging python3Packages.pytest ];
  propagatedBuildInputs = [ python3 python3Packages.jinja2 python3Packages.pyyaml python3Packages.typeguard ];

  meta = {
    description = "Python to generate ROS parameter library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
