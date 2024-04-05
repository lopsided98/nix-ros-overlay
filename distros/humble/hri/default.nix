
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, hri-msgs, opencv, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-hri";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/humble/hri/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "99a54e602231e19315da2301aabd58972f86172d01472cfbedd51fbd65f1c57a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs hri-msgs opencv opencv.cxxdev rclcpp rclcpp-lifecycle sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A wrapper library around the ROS4HRI ROS topics";
    license = with lib.licenses; [ asl20 ];
  };
}
