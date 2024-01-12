
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-core, rclcpp, rsl, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-chomp-motion-planner";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/chomp_motion_planner/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "fa62fd990a9bfbf400757ae904699ed81088dddf0fca93ec020849e5fd851c1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-common moveit-core rclcpp rsl trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''chomp_motion_planner'';
    license = with lib.licenses; [ bsd3 ];
  };
}
