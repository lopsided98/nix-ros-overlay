
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-jig-cli";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jig-release/archive/release/kilted/jig_cli/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "49fe2f7e544326172e119594c63c150e5043c4c157b98067adf536b4a2faff1a";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.jsonschema ];
  propagatedBuildInputs = [ python3Packages.pyyaml ];

  meta = {
    description = "CLI tools for jig - declarative ROS 2 node scaffolding.";
    license = with lib.licenses; [ asl20 ];
  };
}
