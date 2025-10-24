
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-examples-rclcpp-minimal-publisher";
  version = "0.20.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/kilted/examples_rclcpp_minimal_publisher/0.20.6-2.tar.gz";
    name = "0.20.6-2.tar.gz";
    sha256 = "06ddcabd23ebf4d6413bc18839be452c3c9fc9231987425fd9836263f578b7a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples of minimal publisher nodes";
    license = with lib.licenses; [ asl20 ];
  };
}
