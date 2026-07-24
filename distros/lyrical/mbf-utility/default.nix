
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, mbf-msgs, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-mbf-utility";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/lyrical/mbf_utility/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "da409f8a58c6d091ecce76f56ecfb9eac5b6db7c59274f0b07c0adcaeba7eac9";
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
