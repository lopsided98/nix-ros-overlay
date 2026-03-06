
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, mbf-msgs, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mbf-utility";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/humble/mbf_utility/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "3def310b61af0e184ac018f4733448bb1b52bb3704b0e681f480b393ce51889f";
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
