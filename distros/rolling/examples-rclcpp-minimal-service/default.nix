
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-service";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_service/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "1698af3af6875caaa13ac16757f21d91f387de0259d3387e496e706806b34dc5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A minimal service server which adds two numbers'';
    license = with lib.licenses; [ asl20 ];
  };
}
