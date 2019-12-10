
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclcpp-minimal-subscriber";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclcpp_minimal_subscriber/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "217dfaea165c85d915ea91c1144ca2527822aa6f189856719a8335647a9c1848";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal subscribers'';
    license = with lib.licenses; [ asl20 ];
  };
}
