
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, interactive-markers, joint-state-publisher, moveit-core, moveit-msgs, moveit-ros-planning-interface, reach, robot-state-publisher, sensor-msgs, tf2-eigen, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-reach-ros";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/reach_ros2-release/archive/release/humble/reach_ros/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "4213994e610a04a51997ba083bc307867bd0f1fb0fe000ebd4e382e796a57ed5";
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
