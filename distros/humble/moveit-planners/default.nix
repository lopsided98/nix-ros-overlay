
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-planners-chomp, moveit-planners-ompl, pilz-industrial-motion-planner }:
buildRosPackage {
  pname = "ros-humble-moveit-planners";
  version = "2.5.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_planners/2.5.10-1.tar.gz";
    name = "2.5.10-1.tar.gz";
    sha256 = "ee74ef37da9c9801f01aa1c045146a8cf0ccaba5807ddde0bdda7b940b2702f6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-planners-chomp moveit-planners-ompl pilz-industrial-motion-planner ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package that installs all available planners for MoveIt";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
