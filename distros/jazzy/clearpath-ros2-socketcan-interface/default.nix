
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-ros2-socketcan-interface";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_ros2_socketcan_interface-release/archive/release/jazzy/clearpath_ros2_socketcan_interface/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "1d0318975014415ceec785045338f0848d17aef8f0a8576736f18ed950a89660";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A ROS 2 socketcan interface.";
    license = with lib.licenses; [ bsd3 ];
  };
}
