
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rclcpp, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-examples-rclcpp-minimal-publisher";
  version = "0.7.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclcpp_minimal_publisher/0.7.4-1.tar.gz;
    sha256 = "62c0d3bec9c4117a86ae6477bafd66d49e420d8e7df569fad04fcc0c75740672";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rclcpp ];
  propagatedBuildInputs = [ std-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal publisher nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
