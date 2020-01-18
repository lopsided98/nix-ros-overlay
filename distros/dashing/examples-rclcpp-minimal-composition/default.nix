
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-examples-rclcpp-minimal-composition";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclcpp_minimal_composition/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "117b67959ab9139b0e6880331ae6c957813a81b7aac0ad624b7e5048cde22239";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Minimalist examples of composing nodes in the same
  process'';
    license = with lib.licenses; [ asl20 ];
  };
}
