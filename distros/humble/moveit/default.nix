
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-core, moveit-planners, moveit-plugins, moveit-ros }:
buildRosPackage {
  pname = "ros-humble-moveit";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/moveit/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "b996e559fec91607434904086d2d6f90c773301414d791593ae9a3959fa77367";
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
