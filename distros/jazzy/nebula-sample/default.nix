
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, diagnostic-msgs, diagnostic-updater, nebula-core-common, nebula-core-ros, nebula-msgs, nebula-sample-common, nebula-sample-decoders, nebula-sample-hw-interfaces, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nebula-sample";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_sample/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "3e1df02cba7888e841f9e91a0d390d553e5e177ba137c8d9e62c3cecf6ecc6a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater nebula-core-common nebula-core-ros nebula-msgs nebula-sample-common nebula-sample-decoders nebula-sample-hw-interfaces rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ autoware-cmake ];

  meta = {
    description = "Nebula Sample ROS 2 Package";
    license = with lib.licenses; [ asl20 ];
  };
}
