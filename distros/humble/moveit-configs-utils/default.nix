
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-param-builder, launch-ros, srdfdom }:
buildRosPackage {
  pname = "ros-humble-moveit-configs-utils";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_configs_utils/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "e26e6f3a938be0a632d52f1830767abb0be532a88271615b4bb23d24c1f0b0ad";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python launch launch-param-builder launch-ros srdfdom ];

  meta = {
    description = ''Python library for loading moveit config parameters in launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
