
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, rclcpp, rclcpp-components, rcutils, rmw, rmw-implementation-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-quality-of-service-demo-cpp";
  version = "0.20.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/quality_of_service_demo_cpp/0.20.4-1.tar.gz";
    name = "0.20.4-1.tar.gz";
    sha256 = "bdab3547a86115bc12ddec5a489d854a180ea03624dcf332b377d2ea669d2678";
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
