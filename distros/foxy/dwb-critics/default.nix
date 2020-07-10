
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, angles, costmap-queue, dwb-core, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-costmap-2d, nav2-util, pluginlib, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-dwb-critics";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/dwb_critics/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "3c145a436e66f254f5aa3728df875ef0aeafa957b38cc14aa4a6f08c3a30495c";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles costmap-queue dwb-core geometry-msgs nav-2d-msgs nav-2d-utils nav2-costmap-2d nav2-util pluginlib rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The dwb_critics package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
