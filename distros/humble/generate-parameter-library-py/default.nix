
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, python3, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-generate-parameter-library-py";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/humble/generate_parameter_library_py/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "8c7fc9d771455c021ab6e23034055c13c3f43a2511f2c94d3d8d55869a630ff7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ python3 python3Packages.jinja2 python3Packages.pyyaml python3Packages.typeguard ];

  meta = {
    description = "Python to generate ROS parameter library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
