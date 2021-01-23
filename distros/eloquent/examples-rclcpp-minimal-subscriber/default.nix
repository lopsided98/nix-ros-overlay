
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclcpp-minimal-subscriber";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclcpp_minimal_subscriber/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "c0395d83299558f5f3dcbbdd133e94ac176c3b46a7860056a328b3cecbb8ce2a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal subscribers'';
    license = with lib.licenses; [ asl20 ];
  };
}
