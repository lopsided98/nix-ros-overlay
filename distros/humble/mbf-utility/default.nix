
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, mbf-msgs, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mbf-utility";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/humble/mbf_utility/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "6e4c8a8a498a6619187aa3748c1b1008ab98c1eb6329bbdcd6a9e8ff4bc89b5b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs mbf-msgs rclcpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The mbf_utility package";
    license = with lib.licenses; [ bsd3 ];
  };
}
