
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-planners-ompl, pilz-industrial-motion-planner }:
buildRosPackage {
  pname = "ros-humble-moveit-planners";
  version = "2.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_planners/2.5.6-1.tar.gz";
    name = "2.5.6-1.tar.gz";
    sha256 = "fe9450646acd131e65e981f490d456d40abd4d6662c179d608971cc2078df295";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-planners-ompl pilz-industrial-motion-planner ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package that installs all available planners for MoveIt";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
