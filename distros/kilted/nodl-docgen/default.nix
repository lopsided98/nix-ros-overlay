
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nodl-schema, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-nodl-docgen";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/kilted/nodl_docgen/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "43848aeb72000883372ecb766297a16167b3b8dac85f2fb0e714ca6c81e4948c";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ nodl-schema python3Packages.jinja2 python3Packages.pyyaml python3Packages.sphinx ];

  meta = {
    description = "Documentation generation and Sphinx rendering of ROS 2 Node Definition Language (NoDL) documents.";
    license = with lib.licenses; [ asl20 ];
  };
}
