
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-param-builder, launch-ros, srdfdom }:
buildRosPackage {
  pname = "ros-humble-moveit-configs-utils";
  version = "2.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_configs_utils/2.5.7-1.tar.gz";
    name = "2.5.7-1.tar.gz";
    sha256 = "b59f7db76068d43e4f28c84c68e5d74129819042089658d2cac602fb10fc68c9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python launch launch-param-builder launch-ros srdfdom ];

  meta = {
    description = "Python library for loading moveit config parameters in launch files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
