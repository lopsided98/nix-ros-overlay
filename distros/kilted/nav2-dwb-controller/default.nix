
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, costmap-queue, dwb-core, dwb-critics, dwb-msgs, dwb-plugins, nav-2d-msgs, nav-2d-utils, nav2-common }:
buildRosPackage {
  pname = "ros-kilted-nav2-dwb-controller";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_dwb_controller/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "73250c7e280e708914dcbbfb016c5d606614b65f16c88802d081e1bfe59e4b09";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  propagatedBuildInputs = [ costmap-queue dwb-core dwb-critics dwb-msgs dwb-plugins nav-2d-msgs nav-2d-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 controller (DWB) metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
