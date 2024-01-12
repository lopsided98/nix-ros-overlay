
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-planners-ompl, moveit-planners-stomp, pilz-industrial-motion-planner }:
buildRosPackage {
  pname = "ros-iron-moveit-planners";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/iron/moveit_planners/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "aef84ca8d407aee221d004b727e2b068d99e27bb306388855652c34ce3f2a65a";
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
