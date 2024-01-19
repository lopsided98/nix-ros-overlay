
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, crane-plus-description, crane-plus-moveit-config, gripper-controllers, robot-state-publisher, ros-gz, ros2-controllers }:
buildRosPackage {
  pname = "ros-humble-crane-plus-gazebo";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/humble/crane_plus_gazebo/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "442844a408276a68db713d16fd6c592903e8ebc1168697f44440512619ffda04";
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
