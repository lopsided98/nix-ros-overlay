
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-examples-rclcpp-cbg-executor";
  version = "0.21.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/lyrical/examples_rclcpp_cbg_executor/0.21.5-3.tar.gz";
    name = "0.21.5-3.tar.gz";
    sha256 = "5ad9ad5db4761c2cf30c2ba0da21241c885aacb73e84b72223eb56e246a596bc";
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
