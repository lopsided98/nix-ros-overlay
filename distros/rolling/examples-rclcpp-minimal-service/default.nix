
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-service";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_service/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "d30d3cfcc5b7ab000c35b9de8453a9510d3c4d18faeb1f20c733fe7ea6880e33";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A minimal service server which adds two numbers";
    license = with lib.licenses; [ asl20 ];
  };
}
