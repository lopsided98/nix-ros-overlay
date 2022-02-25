
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, launch-param-builder }:
buildRosPackage {
  pname = "ros-galactic-moveit-configs-utils";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_configs_utils/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "ec8844e1d8ba9345cd32e26dfd7429e4e3be4125dacb7de87524a1a8d699bbb4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python launch-param-builder ];

  meta = {
    description = ''Python library for loading moveit config parameters in launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
