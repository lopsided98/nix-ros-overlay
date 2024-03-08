
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz-2d-overlay-msgs";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz_2d_overlay_plugins-release/archive/release/rolling/rviz_2d_overlay_msgs/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "39df394a75cce7c429163303ab52d81528ba0383ceae61e3a4dd6da7b8cb2927";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages describing 2D overlays for RVIZ, extracted/derived from the jsk_visualization ROS1 packege.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
