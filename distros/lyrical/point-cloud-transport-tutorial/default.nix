
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, point-cloud-transport, point-cloud-transport-plugins, rclcpp, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-point-cloud-transport-tutorial";
  version = "0.0.9-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_tutorial-release/archive/release/lyrical/point_cloud_transport_tutorial/0.0.9-3.tar.gz";
    name = "0.0.9-3.tar.gz";
    sha256 = "c2d47bc918661cfb7f960f8057ec97746cba31bb4af5e33cfc106fc4813e2184";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ point-cloud-transport point-cloud-transport-plugins rclcpp rosbag2-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Tutorial for point_cloud_transport.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
