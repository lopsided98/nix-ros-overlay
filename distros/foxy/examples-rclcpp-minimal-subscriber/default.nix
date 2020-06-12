
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-examples-rclcpp-minimal-subscriber";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/foxy/examples_rclcpp_minimal_subscriber/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "55dede0f0ad8f22237d916efcb303cfd80eb410bc4e72e464156e6bc5b4dddcd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal subscribers'';
    license = with lib.licenses; [ asl20 ];
  };
}
