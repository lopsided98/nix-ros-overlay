
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, crane-plus-description, crane-plus-moveit-config, gripper-controllers, robot-state-publisher, ros-gz, ros2-controllers }:
buildRosPackage {
  pname = "ros-jazzy-crane-plus-gazebo";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/jazzy/crane_plus_gazebo/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "659a62fb66b4edada3d4c40f14f79cff493170f7b2bd077f2334b6c2fadfd7d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager crane-plus-description crane-plus-moveit-config gripper-controllers robot-state-publisher ros-gz ros2-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CRANE+ V2 gazebo simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
