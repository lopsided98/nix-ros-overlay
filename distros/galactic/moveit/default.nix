
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-core, moveit-planners, moveit-plugins, moveit-ros }:
buildRosPackage {
  pname = "ros-galactic-moveit";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "f200e9b10018aef20c2f3657079a126a0e6d1d689e00ef96d72bf8b8c482dd70";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-core moveit-planners moveit-plugins moveit-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package that contains all essential packages of MoveIt 2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
