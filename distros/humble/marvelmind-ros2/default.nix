
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch-xml, marvelmind-ros2-msgs, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-humble-marvelmind-ros2";
  version = "1.0.2-r3";

  src = fetchurl {
    url = "https://github.com/MarvelmindRobotics/marvelmind_ros2_release_repo/archive/release/humble/marvelmind_ros2/1.0.2-3.tar.gz";
    name = "1.0.2-3.tar.gz";
    sha256 = "8a1b92d9ba2b5277fdffb56943594f20f2b5391b2692522e67def8ac2153be9b";
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
