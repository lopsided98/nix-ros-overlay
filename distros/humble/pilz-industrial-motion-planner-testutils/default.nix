
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen3-cmake-module, moveit-common, moveit-core, moveit-msgs, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-humble-pilz-industrial-motion-planner-testutils";
  version = "2.5.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/pilz_industrial_motion_planner_testutils/2.5.3-1.tar.gz";
    name = "2.5.3-1.tar.gz";
    sha256 = "7c5a90d20e1697504fef3951ced7779bae8306ea83381a9618ba5d08edcf31b8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake tf2-eigen ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen3-cmake-module moveit-common moveit-core moveit-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
