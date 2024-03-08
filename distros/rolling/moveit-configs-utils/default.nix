
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-param-builder, launch-ros, srdfdom }:
buildRosPackage {
  pname = "ros-rolling-moveit-configs-utils";
  version = "2.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_configs_utils/2.9.0-2.tar.gz";
    name = "2.9.0-2.tar.gz";
    sha256 = "9f9015f4d2693c4ee0b91269778f2335eeb01c9ac2a97f8a1c4a6af733ac1b93";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python launch launch-param-builder launch-ros srdfdom ];

  meta = {
    description = ''Python library for loading moveit config parameters in launch files'';
    license = with lib.licenses; [ bsd3 ];
  };
}
