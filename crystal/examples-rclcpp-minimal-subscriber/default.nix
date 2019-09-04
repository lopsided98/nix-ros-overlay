
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rclcpp, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-examples-rclcpp-minimal-subscriber";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclcpp_minimal_subscriber/0.6.3-0.tar.gz;
    sha256 = "d8f394fccb9c4844ab7b4bbd0af9b0d15642bab4dea934ad72f9fa5f152d8ea1";
  };

  buildInputs = [ std-msgs rclcpp ];
  propagatedBuildInputs = [ std-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal subscribers'';
    license = with lib.licenses; [ asl20 ];
  };
}
