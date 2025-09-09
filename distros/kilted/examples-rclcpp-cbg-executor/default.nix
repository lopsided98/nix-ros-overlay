
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-examples-rclcpp-cbg-executor";
  version = "0.20.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/kilted/examples_rclcpp_cbg_executor/0.20.5-1.tar.gz";
    name = "0.20.5-1.tar.gz";
    sha256 = "11fd02d640be1799fe3cdfe7d57c807acf91381c7fdfb5c3bb9c5c79e4425572";
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
