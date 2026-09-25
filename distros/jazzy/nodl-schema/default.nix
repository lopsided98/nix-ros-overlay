
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-nodl-schema";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/jazzy/nodl_schema/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "837c7b32de0b19f2256f5a9f3acfdbc4ccb779fa0ec3b23408c169c78f731c96";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.jsonschema python3Packages.pydantic python3Packages.pyyaml python3Packages.ruamel-yaml ];

  meta = {
    description = "ROS 2 Node Definition Language (NoDL) schema and validation.";
    license = with lib.licenses; [ asl20 ];
  };
}
