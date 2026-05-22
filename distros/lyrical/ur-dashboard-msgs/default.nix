
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-ur-dashboard-msgs";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/lyrical/ur_dashboard_msgs/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "796379e8f4c95bd70818ba2f41776a37ead5c19eb439fc2a8b395ec2b925432b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages around the UR Dashboard server.";
    license = with lib.licenses; [ bsd3 ];
  };
}
