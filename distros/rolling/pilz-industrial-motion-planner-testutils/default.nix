
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen3-cmake-module, moveit-common, moveit-core, moveit-msgs, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-rolling-pilz-industrial-motion-planner-testutils";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/rolling/pilz_industrial_motion_planner_testutils/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "ec8160d4695885f91df0d3f831c367bfd7cbeebd221697d3ceadcaa68c47079f";
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
