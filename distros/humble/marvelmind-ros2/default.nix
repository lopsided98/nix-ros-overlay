
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch-xml, marvelmind-ros2-msgs, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-humble-marvelmind-ros2";
  version = "1.0.3-r5";

  src = fetchurl {
    url = "https://github.com/MarvelmindRobotics/marvelmind_ros2_release_repo/archive/release/humble/marvelmind_ros2/1.0.3-5.tar.gz";
    name = "1.0.3-5.tar.gz";
    sha256 = "62437699aa5171e2f0db1bf10db01ddc0629db768e4e4eb8f4946200cd638088";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch-xml marvelmind-ros2-msgs rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Marvelmind ROS2 package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
