
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen3-cmake-module, moveit-common, moveit-core, moveit-msgs, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-rolling-pilz-industrial-motion-planner-testutils";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/pilz_industrial_motion_planner_testutils/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "6b36c3a301f35fd6f8db43f33017dd54cd81c0bc62d6477ab35b8733ec700bf9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake tf2-eigen ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen3-cmake-module moveit-common moveit-core moveit-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ bsd3 ];
  };
}
