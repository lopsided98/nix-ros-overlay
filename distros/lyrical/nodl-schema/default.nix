
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-nodl-schema";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/lyrical/nodl_schema/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "85edd3a89e511d7e7b0d1b6762311a290eccf4351c01ed636d7f3d502e7bf836";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.jsonschema python3Packages.pydantic python3Packages.pyyaml python3Packages.ruamel-yaml ];

  meta = {
    description = "ROS 2 Node Definition Language (NoDL) schema and validation.";
    license = with lib.licenses; [ asl20 ];
  };
}
