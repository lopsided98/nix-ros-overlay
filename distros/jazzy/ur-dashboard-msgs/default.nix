
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-ur-dashboard-msgs";
  version = "2.4.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/jazzy/ur_dashboard_msgs/2.4.9-1.tar.gz";
    name = "2.4.9-1.tar.gz";
    sha256 = "2a3078eacb0a6e6b03aefb5d80aa6c2b65556b30ab69affd292349ab33ffd1b1";
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
