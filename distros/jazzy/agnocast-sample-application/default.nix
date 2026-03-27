
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-components, agnocast-sample-interfaces, agnocastlib, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-agnocast-sample-application";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/agnocast_sample_application/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "bc71488affa21a82d6f27a893cf67180fcd2ad1f1c316381c4cfe45f5e5e8b1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ agnocast-components agnocast-sample-interfaces agnocastlib rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A sample application for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
