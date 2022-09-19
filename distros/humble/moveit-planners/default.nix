
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-planners-ompl, pilz-industrial-motion-planner }:
buildRosPackage {
  pname = "ros-humble-moveit-planners";
  version = "2.5.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/moveit_planners/2.5.3-1.tar.gz";
    name = "2.5.3-1.tar.gz";
    sha256 = "27a08125628f76b617546c1aa3b7a623ffd1e655b971cf74bf146a60f3eb88ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-planners-ompl pilz-industrial-motion-planner ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package that installs all available planners for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
