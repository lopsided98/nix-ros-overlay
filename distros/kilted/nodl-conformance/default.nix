
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nodl-schema, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-nodl-conformance";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/kilted/nodl_conformance/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "5e0e52698f16f064f85d99a461503f4033b6cb21d92a349ce01ad349ee8ebe47";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ nodl-schema ];

  meta = {
    description = "Pure semantic comparison for NoDL node interface documents.";
    license = with lib.licenses; [ asl20 ];
  };
}
