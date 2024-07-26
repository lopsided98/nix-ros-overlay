
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, rclcpp, rclcpp-components, rcutils, rmw, rmw-implementation-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-quality-of-service-demo-cpp";
  version = "0.33.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/quality_of_service_demo_cpp/0.33.4-1.tar.gz";
    name = "0.33.4-1.tar.gz";
    sha256 = "5e6715e7bec83dba2359e1ed40dbdc4a818f7c8779c4792a06210863c701c937";
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
