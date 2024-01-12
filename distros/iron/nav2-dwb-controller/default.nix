
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, costmap-queue, dwb-core, dwb-critics, dwb-msgs, dwb-plugins, nav-2d-msgs, nav-2d-utils }:
buildRosPackage {
  pname = "ros-iron-nav2-dwb-controller";
  version = "1.2.5-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_dwb_controller/1.2.5-2.tar.gz";
    name = "1.2.5-2.tar.gz";
    sha256 = "f38216d7284b04501fd83cfef160ffcf8d522c6fc07b7f58cff51107b32b8c46";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ costmap-queue dwb-core dwb-critics dwb-msgs dwb-plugins nav-2d-msgs nav-2d-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 controller (DWB) metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
