
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, launch, launch-param-builder, launch-ros, srdfdom }:
buildRosPackage {
  pname = "ros-lyrical-moveit-configs-utils";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_configs_utils/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "b42ca0a3ea923be205e9465258af9e98156337845aea87269276fe6e71b0cb8f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python launch launch-param-builder launch-ros srdfdom ];

  meta = {
    description = "Python library for loading moveit config parameters in launch files";
    license = with lib.licenses; [ bsd3 ];
  };
}
