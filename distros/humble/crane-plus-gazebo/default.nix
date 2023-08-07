
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, crane-plus-description, crane-plus-moveit-config, gripper-controllers, robot-state-publisher, ros-gz, ros2-controllers }:
buildRosPackage {
  pname = "ros-humble-crane-plus-gazebo";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/humble/crane_plus_gazebo/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "4b0e7bb079cacd9f337e8474f5aa31b1e31fe2b8c45634c3c4488b293caf0e85";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager crane-plus-description crane-plus-moveit-config gripper-controllers robot-state-publisher ros-gz ros2-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+ V2 gazebo simulation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
