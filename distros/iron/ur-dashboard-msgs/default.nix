
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-ur-dashboard-msgs";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/iron/ur_dashboard_msgs/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "95a407902a8b7bae6c8a11da32283f88ac04156617c83ae5b0395db118ffd33b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages around the UR Dashboard server.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
