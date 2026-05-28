
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, agnocast-cie-thread-configurator, agnocast-components, agnocastlib, ament-cmake, launch-testing-ament-cmake, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-agnocast-e2e-test";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/agnocast_e2e_test/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "35c127f9d5bdce2b854b913900e0aa142385a50073ddef96fa9b29ef94c6316a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ agnocast-cie-config-msgs launch-testing-ament-cmake ];
  propagatedBuildInputs = [ agnocast-cie-thread-configurator agnocast-components agnocastlib rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "E2E test for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
