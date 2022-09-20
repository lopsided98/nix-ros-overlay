
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, libpcap, rclcpp, rclcpp-components, tf2-ros, velodyne-msgs }:
buildRosPackage {
  pname = "ros-galactic-velodyne-driver";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/galactic/velodyne_driver/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "4742dabcbde7a4736da17493bf638bb49d4155d67f777bed371e82e5df98dda8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater libpcap rclcpp rclcpp-components tf2-ros velodyne-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''ROS device driver for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
