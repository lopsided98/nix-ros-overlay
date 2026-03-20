
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-components, agnocastlib, ament-cmake, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-agnocast-e2e-test";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/agnocast_e2e_test/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "6e1fa7e7bf8dad732a27cf912dd249f76e607df492fce630c39568bd2b4e993d";
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
