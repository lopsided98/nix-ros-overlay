
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, costmap-queue, dwb-core, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-costmap-2d, nav2-util, pluginlib, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-dwb-critics";
  version = "1.1.17-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/dwb_critics/1.1.17-1.tar.gz";
    name = "1.1.17-1.tar.gz";
    sha256 = "fe5e278d0ab1f655e396a74d3a2e547dee0b32536dda83770b556e19c962fe25";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles costmap-queue dwb-core geometry-msgs nav-2d-msgs nav-2d-utils nav2-costmap-2d nav2-util pluginlib rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The dwb_critics package";
    license = with lib.licenses; [ bsd3 ];
  };
}
