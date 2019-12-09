
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, example-interfaces, rcutils, launch, rmw-implementation-cmake, std-msgs, launch-testing, launch-ros, ament-lint-common, ament-cmake, rmw, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-quality-of-service-demo-cpp";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/quality_of_service_demo_cpp/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "0833c1999969df3eeffb39bb369cc88794eadda4f32213f4943b2f36941898d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ example-interfaces rcutils rmw-implementation-cmake std-msgs rmw rclcpp ];
  checkInputs = [ launch-testing ament-lint-common ament-lint-auto launch ];
  propagatedBuildInputs = [ example-interfaces rcutils std-msgs launch-ros rmw rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ Demo applications for Quality of Service features'';
    license = with lib.licenses; [ asl20 ];
  };
}
