
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocastlib, ament-cmake, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-humble-agnocast-e2e-test";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_e2e_test/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "df7024ae85bceff14a051bb475783dd041d62c6927f85cbc01ec1b8911edbb08";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ agnocastlib rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "E2E test for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
