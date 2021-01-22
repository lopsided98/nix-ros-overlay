
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, raspimouse-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-raspimouse";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/rt-net/raspimouse2-release/archive/release/foxy/raspimouse/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "47a383d3662d097bcecbbc0435bbaad12fa5fc32c05db7b7894c6cbcdeba80df";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs raspimouse-msgs rclcpp rclcpp-components rclcpp-lifecycle std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RaspiMouse ROS 2 node'';
    license = with lib.licenses; [ asl20 ];
  };
}
