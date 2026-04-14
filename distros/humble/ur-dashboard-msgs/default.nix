
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-ur-dashboard-msgs";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/humble/ur_dashboard_msgs/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "eb474fe922ca2c31d09da58fcfefb36aac93e59b7eb1d65532b616fcda935ddb";
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
