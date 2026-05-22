
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-components, agnocast-sample-interfaces, agnocastlib, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-agnocast-sample-application";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_sample_application/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "e9c2a7ead1d545529578c8690d1a505b0c0c8e441007b14796f0de98ccfc695a";
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
