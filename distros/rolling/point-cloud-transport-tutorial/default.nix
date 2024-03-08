
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, point-cloud-transport, point-cloud-transport-plugins, rclcpp, rcpputils, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport-tutorial";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_tutorial-release/archive/release/rolling/point_cloud_transport_tutorial/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "504ae06e52d656c57ed25d40ebf463005395d6c5c22d3eb69722c39e258218f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ point-cloud-transport point-cloud-transport-plugins rclcpp rcpputils rosbag2-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Tutorial for point_cloud_transport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
