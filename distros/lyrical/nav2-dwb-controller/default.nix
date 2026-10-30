
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros, costmap-queue, dwb-core, dwb-critics, dwb-msgs, dwb-plugins, nav-2d-msgs, nav-2d-utils, nav2-common }:
buildRosPackage {
  pname = "ros-lyrical-nav2-dwb-controller";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_dwb_controller/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "64f8e2645796fee25b38bf9863c705d6a2442eefb440ac996d4185d3de6d0dba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  propagatedBuildInputs = [ backward-ros costmap-queue dwb-core dwb-critics dwb-msgs dwb-plugins nav-2d-msgs nav-2d-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 controller (DWB) metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
