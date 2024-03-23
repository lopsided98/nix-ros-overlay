
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mocap4r2-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-marker-publisher";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/mocap4r2_marker_publisher/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "54ec7d810be1eb54f7644bb98563dfbef0444434a0bd9ba7eba6c13ba6fecf4e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ mocap4r2-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Node for publishing some simple marker data for testing purposes";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
