
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, octomap, octomap-msgs, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-foxy-octomap-ros";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_ros-release/archive/release/foxy/octomap_ros/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "71a489c497eab3b8ebaa254356272247db3be9bb554fec5654b0cd1f0dcfc58c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ octomap octomap-msgs sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''octomap_ros provides conversion functions between ROS and OctoMap's native types.
    This enables a convenvient use of the octomap package in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
