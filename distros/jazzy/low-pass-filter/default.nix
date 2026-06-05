
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, control-msgs, control-toolbox, controller-interface, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools }:
buildRosPackage {
  pname = "ros-jazzy-low-pass-filter";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/husarion/husarion_controllers-release/archive/release/jazzy/low_pass_filter/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "360c895dcb7088c6f31ab81793e68be5a3adfe882e887687d94c5eadd65927b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ control-msgs control-toolbox controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Wrapper for low pass filter";
    license = with lib.licenses; [ asl20 ];
  };
}
