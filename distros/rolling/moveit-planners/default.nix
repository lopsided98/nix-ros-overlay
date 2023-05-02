
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-planners-ompl, pilz-industrial-motion-planner }:
buildRosPackage {
  pname = "ros-rolling-moveit-planners";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_planners/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "e373d0bcc36f2ad7660b58500be16d9f76ecdae9774d939c9a407148b282aa52";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-planners-ompl pilz-industrial-motion-planner ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package that installs all available planners for MoveIt'';
    license = with lib.licenses; [ bsd3 ];
  };
}
