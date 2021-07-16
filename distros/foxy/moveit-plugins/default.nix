
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-foxy-moveit-plugins";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_plugins/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "c950632eced55edafc03244652f0b247a23500857db457f052d81d3860f3aa96";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-simple-controller-manager ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for MoveIt plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
