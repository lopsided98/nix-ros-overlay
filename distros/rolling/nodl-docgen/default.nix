
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nodl-schema, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-nodl-docgen";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/rolling/nodl_docgen/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "ed531c4c2a22213302943f2d4d2513ef924f2b4a9ae82b7bc519b74d41840f69";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ nodl-schema python3Packages.jinja2 python3Packages.pyyaml python3Packages.sphinx ];

  meta = {
    description = "Documentation generation and Sphinx rendering of ROS 2 Node Definition Language (NoDL) documents.";
    license = with lib.licenses; [ asl20 ];
  };
}
