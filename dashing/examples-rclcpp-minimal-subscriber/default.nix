
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rclcpp, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-examples-rclcpp-minimal-subscriber";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclcpp_minimal_subscriber/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "f420eb0457add800f4be28066567e9cc7336c8dcb2da3436646fa24e41c535fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rclcpp ];
  propagatedBuildInputs = [ std-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal subscribers'';
    license = with lib.licenses; [ asl20 ];
  };
}
