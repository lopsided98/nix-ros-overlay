
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-subscriber";
  version = "0.20.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_subscriber/0.20.3-1.tar.gz";
    name = "0.20.3-1.tar.gz";
    sha256 = "8785a9ea1ec431c2b293d73ad9218571742c83f0c98b5f7d284b06b9821f25bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples of minimal subscribers";
    license = with lib.licenses; [ asl20 ];
  };
}
