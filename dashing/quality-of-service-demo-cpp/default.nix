
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-ros, rmw-implementation-cmake, ament-lint-common, launch-testing, launch, example-interfaces, rclcpp, std-msgs, ament-lint-auto, rcutils, rmw }:
buildRosPackage {
  pname = "ros-dashing-quality-of-service-demo-cpp";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/quality_of_service_demo_cpp/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "46db461bf70c97263ee9622469759d4936d519823c4a3dd8467c274007ca6555";
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
