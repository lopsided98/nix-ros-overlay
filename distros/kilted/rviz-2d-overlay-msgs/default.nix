
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-rviz-2d-overlay-msgs";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz_2d_overlay_plugins-release/archive/release/kilted/rviz_2d_overlay_msgs/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "b9709daed3ffa3ad7046fc002cb7a42cdc30c2efa967e5b68971bde193f88a23";
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
