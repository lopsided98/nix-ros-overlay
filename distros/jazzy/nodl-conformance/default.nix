
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nodl-schema, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-nodl-conformance";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/jazzy/nodl_conformance/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "b8b294b7cab000d7acf608a301d92a7fd1b37553ff3434cb6885e18f5c270fa9";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ nodl-schema ];

  meta = {
    description = "Pure semantic comparison for NoDL node interface documents.";
    license = with lib.licenses; [ asl20 ];
  };
}
