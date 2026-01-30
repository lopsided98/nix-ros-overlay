
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-sample-interfaces, agnocastlib, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-agnocast-sample-application";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_sample_application/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "d2ae2e914e00dfb3a51ca525a53e37c89bf6235099901adc388da94b07a61cf3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ agnocast-sample-interfaces agnocastlib rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A sample application for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
