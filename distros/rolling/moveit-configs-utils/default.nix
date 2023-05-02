
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-param-builder, launch-ros, srdfdom }:
buildRosPackage {
  pname = "ros-rolling-moveit-configs-utils";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_configs_utils/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "b637186188a779ee1647054fe522cdbb814322ea33ff7d5dec0503a827706285";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python launch launch-param-builder launch-ros srdfdom ];

  meta = {
    description = ''Python library for loading moveit config parameters in launch files'';
    license = with lib.licenses; [ bsd3 ];
  };
}
