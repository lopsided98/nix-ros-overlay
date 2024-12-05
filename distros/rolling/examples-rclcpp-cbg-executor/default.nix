
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-cbg-executor";
  version = "0.20.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_cbg_executor/0.20.3-1.tar.gz";
    name = "0.20.3-1.tar.gz";
    sha256 = "9337202cc2e14398bbab72086b5983d6d361309770aef562a2987594481f08ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Example for multiple Executor instances in one process, using the callback-group-level interface of the Executor class.";
    license = with lib.licenses; [ asl20 ];
  };
}
