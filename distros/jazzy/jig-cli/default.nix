
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-jig-cli";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jig-release/archive/release/jazzy/jig_cli/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "04eeb8bbfbb9e9041fd0bf1551bf7a0acc2e61fca39b6ea68d3335ed5c76d52a";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.jsonschema ];
  propagatedBuildInputs = [ python3Packages.pyyaml ];

  meta = {
    description = "CLI tools for jig - declarative ROS 2 node scaffolding.";
    license = with lib.licenses; [ asl20 ];
  };
}
