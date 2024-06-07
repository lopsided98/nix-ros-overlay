
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen3-cmake-module, moveit-common, moveit-core, moveit-msgs, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-jazzy-pilz-industrial-motion-planner-testutils";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/pilz_industrial_motion_planner_testutils/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "21192e67ee3ec97978db367ba71ed59cdfea3a615f830b889a7ca9b2369be27a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake tf2-eigen ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen3-cmake-module moveit-common moveit-core moveit-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Helper scripts and functionality to test industrial motion generation";
    license = with lib.licenses; [ bsd3 ];
  };
}
