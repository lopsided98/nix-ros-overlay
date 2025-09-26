
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, rclcpp, rclcpp-components, rcutils, rmw, rmw-implementation-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-quality-of-service-demo-cpp";
  version = "0.36.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/kilted/quality_of_service_demo_cpp/0.36.2-1.tar.gz";
    name = "0.36.2-1.tar.gz";
    sha256 = "0f49bec40a60f0c5b0b70c1eff3a35d7bbcfe29f91a6228b338a1f7404117cda";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmw-implementation-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ example-interfaces launch-ros rclcpp rclcpp-components rcutils rmw sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ Demo applications for Quality of Service features";
    license = with lib.licenses; [ asl20 ];
  };
}
