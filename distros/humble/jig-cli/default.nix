
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-humble-jig-cli";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jig-release/archive/release/humble/jig_cli/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "37f6db782969bf9a44a7240e9f7642060a2584dba305e6a1aabb8cacefdc13a5";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.jsonschema ];
  propagatedBuildInputs = [ python3Packages.pyyaml ];

  meta = {
    description = "CLI tools for jig - declarative ROS 2 node scaffolding.";
    license = with lib.licenses; [ asl20 ];
  };
}
