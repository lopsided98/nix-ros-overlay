
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, launch, launch-param-builder, launch-ros, srdfdom }:
buildRosPackage {
  pname = "ros-kilted-moveit-configs-utils";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_configs_utils/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "6e53f91940cf09b549af1d275a57ab1022dda1af7e0d046b7b90776d07871e9b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python launch launch-param-builder launch-ros srdfdom ];

  meta = {
    description = "Python library for loading moveit config parameters in launch files";
    license = with lib.licenses; [ bsd3 ];
  };
}
