
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, laser-geometry, launch, launch-ros, message-filters, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-pointcloud-to-laserscan";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pointcloud_to_laserscan-release/archive/release/rolling/pointcloud_to_laserscan/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "78beaa6308a0952ccb13df1c8a9e1ca22dc03536beb6527a3ce7f815da20a957";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ laser-geometry launch launch-ros message-filters rclcpp rclcpp-components sensor-msgs tf2 tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Converts a 3D Point Cloud into a 2D laser scan. This is useful for making devices like the Kinect appear like a laser scanner for 2D-based algorithms (e.g. laser-based SLAM).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
