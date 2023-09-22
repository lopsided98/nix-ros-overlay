
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, interactive-markers, joint-state-publisher, moveit-core, moveit-msgs, moveit-ros-planning-interface, reach, robot-state-publisher, sensor-msgs, tf2-eigen, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-reach-ros";
  version = "1.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/reach_ros2-release/archive/release/humble/reach_ros/1.3.2-2.tar.gz";
    name = "1.3.2-2.tar.gz";
    sha256 = "0857ca1e6224ffa71d8d7a68385c9c346f7c96d835d11c76334b4115e1e682a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ interactive-markers joint-state-publisher moveit-core moveit-msgs moveit-ros-planning-interface reach robot-state-publisher sensor-msgs tf2-eigen visualization-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''The reach_ros package'';
    license = with lib.licenses; [ asl20 ];
  };
}
