
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-core, rclcpp, trajectory-msgs }:
buildRosPackage {
  pname = "ros-galactic-chomp-motion-planner";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/chomp_motion_planner/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "aee3e8c5ecd7649a5c2f2e73d3de0ea91410ed186d4470b09ae5110c69ea39f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-core rclcpp trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''chomp_motion_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
