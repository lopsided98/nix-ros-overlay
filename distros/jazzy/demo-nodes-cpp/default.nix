
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, launch-xml, rcl, rcl-interfaces, rclcpp, rclcpp-components, rcpputils, rcutils, rmw, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-demo-nodes-cpp";
  version = "0.33.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/demo_nodes_cpp/0.33.9-1.tar.gz";
    name = "0.33.9-1.tar.gz";
    sha256 = "f538d2cd82e34e739c9c4f5f2034a7fde79d3a6d5508dfef4fec130fab1ff463";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ example-interfaces launch-ros launch-xml rcl rcl-interfaces rclcpp rclcpp-components rcpputils rcutils rmw std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ nodes which were previously in the ros2/examples repository but are now just used for demo purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
