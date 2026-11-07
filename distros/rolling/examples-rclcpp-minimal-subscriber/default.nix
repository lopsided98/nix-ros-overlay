
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-subscriber";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_subscriber/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "75b4778dbe7b240474a3e093ade27dccabf3455aa3ce040f6e72c6f1142fd690";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Examples of minimal subscribers";
    license = with lib.licenses; [ asl20 ];
  };
}
