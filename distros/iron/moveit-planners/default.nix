
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-planners-ompl, moveit-planners-stomp, pilz-industrial-motion-planner }:
buildRosPackage {
  pname = "ros-iron-moveit-planners";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/iron/moveit_planners/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "47185fab07523748f9d480f86e5594cf1318a8d1044d65553590a12cd4506819";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-planners-ompl moveit-planners-stomp pilz-industrial-motion-planner ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package that installs all available planners for MoveIt'';
    license = with lib.licenses; [ bsd3 ];
  };
}
