
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-ur-dashboard-msgs";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/kilted/ur_dashboard_msgs/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "9270176dcc16828659f88d46bee0d4ad3f2ccc0e5ed7d48116ee51df52a42af6";
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
