
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, launch, launch-param-builder, launch-ros, srdfdom }:
buildRosPackage {
  pname = "ros-lyrical-moveit-configs-utils";
  version = "2.14.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_configs_utils/2.14.1-3.tar.gz";
    name = "2.14.1-3.tar.gz";
    sha256 = "261258b8c6b00394113b64e3faad46abf81b41c36946c9688a0ef89291b8b147";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python launch launch-param-builder launch-ros srdfdom ];

  meta = {
    description = "Python library for loading moveit config parameters in launch files";
    license = with lib.licenses; [ bsd3 ];
  };
}
