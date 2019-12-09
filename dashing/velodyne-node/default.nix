
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, velodyne-driver, rclcpp-lifecycle, udp-driver, lidar-utils, ament-lint-common, ament-cmake, autoware-auto-cmake, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-velodyne-node";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/velodyne_node/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "4768eeae5b74c3b40d051e9a9b8cdc2dc6b6043d1960f1a3f5dfb9b2d86b528c";
  };

  buildType = "ament_cmake";
  buildInputs = [ velodyne-driver rclcpp-lifecycle sensor-msgs udp-driver lidar-utils ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs rclcpp-lifecycle velodyne-driver udp-driver lidar-utils ];
  nativeBuildInputs = [ autoware-auto-cmake ament-cmake ];

  meta = {
    description = ''(Mostly) static memory implementation of a velodyne driver in one process'';
    license = with lib.licenses; [ asl20 ];
  };
}
