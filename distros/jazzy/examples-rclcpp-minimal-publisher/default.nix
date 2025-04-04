
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclcpp-minimal-publisher";
  version = "0.19.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclcpp_minimal_publisher/0.19.5-1.tar.gz";
    name = "0.19.5-1.tar.gz";
    sha256 = "7b1149d4ee5b08c4873c54384a50d0ae21e4ba107200f432adcaf20cb5da2c1a";
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
