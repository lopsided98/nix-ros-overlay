
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, rclcpp, rclcpp-components, rcutils, rmw, rmw-implementation-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-quality-of-service-demo-cpp";
  version = "0.33.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/quality_of_service_demo_cpp/0.33.3-1.tar.gz";
    name = "0.33.3-1.tar.gz";
    sha256 = "b5fa829c3926a09732a6b690f3f1d1de62d7a4fc2a7b8a2db20823a20871cb81";
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
