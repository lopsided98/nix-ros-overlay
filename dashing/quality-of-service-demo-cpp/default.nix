
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-ros, rmw-implementation-cmake, ament-lint-common, launch-testing, launch, example-interfaces, rclcpp, std-msgs, ament-lint-auto, rcutils, rmw }:
buildRosPackage {
  pname = "ros-dashing-quality-of-service-demo-cpp";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/quality_of_service_demo_cpp/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "0833c1999969df3eeffb39bb369cc88794eadda4f32213f4943b2f36941898d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ rmw-implementation-cmake example-interfaces rclcpp std-msgs rcutils rmw ];
  checkInputs = [ launch-testing ament-lint-auto launch ament-lint-common ];
  propagatedBuildInputs = [ launch-ros example-interfaces rclcpp std-msgs rcutils rmw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ Demo applications for Quality of Service features'';
    license = with lib.licenses; [ asl20 ];
  };
}
