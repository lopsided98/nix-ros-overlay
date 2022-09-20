
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-core, rclcpp, trajectory-msgs }:
buildRosPackage {
  pname = "ros-galactic-chomp-motion-planner";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/chomp_motion_planner/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "c98639ad50ae4bb8eab40b3ac7c09ced9516f908b8d8b265d650594cd453b5f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-core rclcpp trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''chomp_motion_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
