
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rviz-2d-overlay-msgs";
  version = "1.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz_2d_overlay_plugins-release/archive/release/lyrical/rviz_2d_overlay_msgs/1.4.1-3.tar.gz";
    name = "1.4.1-3.tar.gz";
    sha256 = "08d3c9f0a5de4642c35de226e8e17c75be723305f273b755e6b7c4e634b2f7d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages describing 2D overlays for RVIZ, extracted/derived from the jsk_visualization ROS1 packege.";
    license = with lib.licenses; [ bsd3 ];
  };
}
