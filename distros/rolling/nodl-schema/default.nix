
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-nodl-schema";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/rolling/nodl_schema/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "9954677b5c3868ad0264cbdd145081a01a3460d9b9d9f676314ad2c81764f6ae";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.jsonschema python3Packages.pydantic python3Packages.pyyaml python3Packages.ruamel_yaml ];

  meta = {
    description = "ROS 2 Node Definition Language (NoDL) schema and validation.";
    license = with lib.licenses; [ asl20 ];
  };
}
