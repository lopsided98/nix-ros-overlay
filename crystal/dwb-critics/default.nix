
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, costmap-queue, ament-cmake, nav-2d-msgs, nav2-util, nav-2d-utils, ament-lint-auto, sensor-msgs, launch-testing, ament-lint-common, nav2-common, rclcpp, ament-cmake-gtest, nav2-costmap-2d, angles, dwb-core, launch, ament-cmake-pytest }:
buildRosPackage {
  pname = "ros-crystal-dwb-critics";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/dwb_critics/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "0e3089d57956c995c412f80fd13e621dc44777f3d006c4eaf0128f694e746987";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs geometry-msgs dwb-core pluginlib nav2-costmap-2d costmap-queue nav2-common nav-2d-msgs angles nav2-util rclcpp nav-2d-utils ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs dwb-core pluginlib nav2-costmap-2d costmap-queue nav-2d-msgs angles nav2-util rclcpp nav-2d-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The dwb_critics package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
