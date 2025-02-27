
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, launch, launch-param-builder, launch-ros, srdfdom }:
buildRosPackage {
  pname = "ros-rolling-moveit-configs-utils";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_configs_utils/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "5d10eb5a14f1480ff82e531175921260dd95e4725292b5f369d50760964cb375";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python launch launch-param-builder launch-ros srdfdom ];

  meta = {
    description = "Python library for loading moveit config parameters in launch files";
    license = with lib.licenses; [ bsd3 ];
  };
}
