
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nodl-schema, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-nodl-conformance";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/rolling/nodl_conformance/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "1a9b8a094861aa2a4f400d923bfe272bed6a65fac0273edc02cc1407d5cda613";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ nodl-schema ];

  meta = {
    description = "Pure semantic comparison for NoDL node interface documents.";
    license = with lib.licenses; [ asl20 ];
  };
}
