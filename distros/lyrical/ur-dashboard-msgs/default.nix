
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-ur-dashboard-msgs";
  version = "5.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/lyrical/ur_dashboard_msgs/5.0.0-3.tar.gz";
    name = "5.0.0-3.tar.gz";
    sha256 = "d888e498e0c78e79f1f5b7934a9fe8074cc459efff48a6e193f19fb6cc9d66da";
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
