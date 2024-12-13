
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, tuw-airskin-msgs, tuw-geometry-msgs, tuw-graph-msgs, tuw-multi-robot-msgs, tuw-nav-msgs, tuw-object-map-msgs, tuw-object-msgs, tuw-std-msgs }:
buildRosPackage {
  pname = "ros-humble-tuw-msgs";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tuw_msgs-release/archive/release/humble/tuw_msgs/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "0c6187e6d167b47e69b597ee9749427c032ac8264b2eca35a3619ebfc16b2c16";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components tuw-airskin-msgs tuw-geometry-msgs tuw-graph-msgs tuw-multi-robot-msgs tuw-nav-msgs tuw-object-map-msgs tuw-object-msgs tuw-std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "tuw_msgs meta package with write and read file libs for tuw_msgs";
    license = with lib.licenses; [ bsd3 ];
  };
}
