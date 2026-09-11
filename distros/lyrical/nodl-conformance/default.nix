
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nodl-schema, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-nodl-conformance";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/lyrical/nodl_conformance/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "9e208c95c33820582adabd87939bc0f4e1b7e5293d57e236374e525bb15c2159";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ nodl-schema ];

  meta = {
    description = "Pure semantic comparison for NoDL node interface documents.";
    license = with lib.licenses; [ asl20 ];
  };
}
