
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-examples-rclcpp-minimal-timer";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/foxy/examples_rclcpp_minimal_timer/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "cd688e2fc33ec83cc2b0bc9a7c8cc33b9a81230e0a1df450fb5c81b15d3f7372";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal nodes which have timers'';
    license = with lib.licenses; [ asl20 ];
  };
}
