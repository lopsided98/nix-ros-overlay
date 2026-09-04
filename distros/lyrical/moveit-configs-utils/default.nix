
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, launch, launch-param-builder, launch-ros, srdfdom }:
buildRosPackage {
  pname = "ros-lyrical-moveit-configs-utils";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_configs_utils/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "703ce0883a3cf0f52db648b75eeeefb9ef9a86883bac04607d4d76310a286754";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python launch launch-param-builder launch-ros srdfdom ];

  meta = {
    description = "Python library for loading moveit config parameters in launch files";
    license = with lib.licenses; [ bsd3 ];
  };
}
