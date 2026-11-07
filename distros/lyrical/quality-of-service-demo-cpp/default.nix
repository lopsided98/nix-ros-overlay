
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, rclcpp, rclcpp-components, rcutils, rmw, rmw-implementation-cmake, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-quality-of-service-demo-cpp";
  version = "0.37.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/quality_of_service_demo_cpp/0.37.10-1.tar.gz";
    name = "0.37.10-1.tar.gz";
    sha256 = "9f2881a52936e39b7a6276aec7eba57dfecd4d2929aa54411545f524364191bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmw-implementation-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ example-interfaces launch-ros rclcpp rclcpp-components rcutils rmw sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ Demo applications for Quality of Service features";
    license = with lib.licenses; [ asl20 ];
  };
}
