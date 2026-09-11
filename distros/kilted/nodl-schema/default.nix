
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-nodl-schema";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/kilted/nodl_schema/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "d2c7d49a4a4cd844d3fc8c881af2f108161f8aa2dec41f5bbe6b273bd417e3bf";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.jsonschema python3Packages.pydantic python3Packages.pyyaml python3Packages.ruamel_yaml ];

  meta = {
    description = "ROS 2 Node Definition Language (NoDL) schema and validation.";
    license = with lib.licenses; [ asl20 ];
  };
}
