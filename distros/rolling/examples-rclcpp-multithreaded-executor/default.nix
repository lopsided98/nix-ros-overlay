
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-multithreaded-executor";
  version = "0.16.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_multithreaded_executor/0.16.2-1.tar.gz";
    name = "0.16.2-1.tar.gz";
    sha256 = "3183408d70d4448d5f48e4a930bfc4155f0788c8c17f295d42e9356f076a30c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing example of how to implement a multithreaded executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
