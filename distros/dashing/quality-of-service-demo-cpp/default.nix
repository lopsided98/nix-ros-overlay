
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, rclcpp, rcutils, rmw, rmw-implementation-cmake, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-quality-of-service-demo-cpp";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/quality_of_service_demo_cpp/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "0833c1999969df3eeffb39bb369cc88794eadda4f32213f4943b2f36941898d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ rmw-implementation-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ example-interfaces launch-ros rclcpp rcutils rmw std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ Demo applications for Quality of Service features'';
    license = with lib.licenses; [ asl20 ];
  };
}
