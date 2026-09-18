
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nodl-schema, python3Packages }:
buildRosPackage {
  pname = "ros-humble-nodl-conformance";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/humble/nodl_conformance/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "18ef4d1a2995f337b069fe4f420d1eb8edb0460a1e85e9f902e8f7c576447eb7";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ nodl-schema ];

  meta = {
    description = "Pure semantic comparison for NoDL node interface documents.";
    license = with lib.licenses; [ asl20 ];
  };
}
