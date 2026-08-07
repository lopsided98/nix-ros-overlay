
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros, costmap-queue, dwb-core, dwb-critics, dwb-msgs, dwb-plugins, nav-2d-msgs, nav-2d-utils, nav2-common }:
buildRosPackage {
  pname = "ros-lyrical-nav2-dwb-controller";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_dwb_controller/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "af2f6a40dcb9fbf35cb0f50d5cf9965a44110f4f94bc88c9b3c65849f7d44ee6";
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
