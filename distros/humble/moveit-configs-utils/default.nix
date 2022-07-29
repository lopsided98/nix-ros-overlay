
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-param-builder, launch-ros, srdfdom }:
buildRosPackage {
  pname = "ros-humble-moveit-configs-utils";
  version = "2.5.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/moveit_configs_utils/2.5.3-1.tar.gz";
    name = "2.5.3-1.tar.gz";
    sha256 = "c1b3f7e0435e1f050e0c1eea62d83c5b173fd2329d8176b3d8be805dbf1454e6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python launch launch-param-builder launch-ros srdfdom ];

  meta = {
    description = ''Python library for loading moveit config parameters in launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
