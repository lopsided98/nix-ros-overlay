
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-components, agnocast-sample-interfaces, agnocastlib, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-agnocast-sample-application";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/agnocast_sample_application/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "0eefcb0cab951cf2b17e3026a6ab386486609bb344eac950ceddc453a4990d46";
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
