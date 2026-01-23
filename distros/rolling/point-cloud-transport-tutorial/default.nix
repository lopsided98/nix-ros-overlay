
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, point-cloud-transport, point-cloud-transport-plugins, rclcpp, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport-tutorial";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_tutorial-release/archive/release/rolling/point_cloud_transport_tutorial/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "469e41ac4358c4bb981d95aa0c027f69dbe2623cb04633856b56aa927e8806a4";
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
