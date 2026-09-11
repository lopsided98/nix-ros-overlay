
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nodl-schema, python3Packages }:
buildRosPackage {
  pname = "ros-humble-nodl-docgen";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/humble/nodl_docgen/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "af7ac38ef648da58a8e24953d4785b92c59d3d4ee736d1ebe1a242541fb03404";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ nodl-schema python3Packages.jinja2 python3Packages.pyyaml python3Packages.sphinx ];

  meta = {
    description = "Documentation generation and Sphinx rendering of ROS 2 Node Definition Language (NoDL) documents.";
    license = with lib.licenses; [ asl20 ];
  };
}
