
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-cbg-executor";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_cbg_executor/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "35656cea6e64e67fb870af29ff4226423c148011629598579f6ef34bd97a2334";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Example for multiple Executor instances in one process, using the callback-group-level interface of the Executor class.";
    license = with lib.licenses; [ asl20 ];
  };
}
