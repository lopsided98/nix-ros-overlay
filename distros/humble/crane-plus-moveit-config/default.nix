
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit, robot-state-publisher, rviz2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-humble-crane-plus-moveit-config";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/humble/crane_plus_moveit_config/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "397049ce66242ebf2530761f4904ee347832510e2b44b92e29868df106e45fcd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit robot-state-publisher rviz2 tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+ V2 move_group config package'';
    license = with lib.licenses; [ asl20 ];
  };
}
