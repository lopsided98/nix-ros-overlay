
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-components, agnocastlib, ament-cmake, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-humble-agnocast-e2e-test";
  version = "2.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_e2e_test/2.3.1-3.tar.gz";
    name = "2.3.1-3.tar.gz";
    sha256 = "54aad3d9f94083c18764fa6080b71db16d330f7dab623c33b4691ff7630ed8df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ agnocast-components agnocastlib rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "E2E test for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
