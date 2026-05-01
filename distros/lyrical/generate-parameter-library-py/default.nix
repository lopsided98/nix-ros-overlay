
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-generate-parameter-library-py";
  version = "0.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/lyrical/generate_parameter_library_py/0.8.0-3.tar.gz";
    name = "0.8.0-3.tar.gz";
    sha256 = "5f06766cfbe1f83a89ff51fa030096926f512c301b67a45c715c89e27eff4dad";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ python3 python3Packages.jinja2 python3Packages.pyyaml python3Packages.typeguard ];

  meta = {
    description = "Python to generate ROS parameter library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
