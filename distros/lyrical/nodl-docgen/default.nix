
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nodl-schema, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-nodl-docgen";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/lyrical/nodl_docgen/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "1b3f606159dfed460f18fccecb6b085f3b8b3007aeb4916cdbb5589ffd2e48de";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ nodl-schema python3Packages.jinja2 python3Packages.pyyaml python3Packages.sphinx ];

  meta = {
    description = "Documentation generation and Sphinx rendering of ROS 2 Node Definition Language (NoDL) documents.";
    license = with lib.licenses; [ asl20 ];
  };
}
