
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, point-cloud-transport, point-cloud-transport-plugins, rclcpp, rcpputils, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-point-cloud-transport-tutorial";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_tutorial-release/archive/release/kilted/point_cloud_transport_tutorial/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "babf3dcf97f2d18db3d714acb13952e7497eeb46bd123de516e96986fae0d8fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ point-cloud-transport point-cloud-transport-plugins rclcpp rcpputils rosbag2-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Tutorial for point_cloud_transport.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
