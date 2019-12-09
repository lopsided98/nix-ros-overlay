
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rclcpp, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclcpp-minimal-publisher";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclcpp_minimal_publisher/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "44e89bf81e4075cb56c97969abaa8e0df7d5417f26ab68fc3d1d05a930693dba";
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
