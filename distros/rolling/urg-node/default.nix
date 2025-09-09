
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, diagnostic-updater, laser-proc, rclcpp, rclcpp-components, rosidl-default-generators, sensor-msgs, std-srvs, urdf, urg-c, urg-node-msgs }:
buildRosPackage {
  pname = "ros-rolling-urg-node";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node-release/archive/release/rolling/urg_node/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "0c5aa486296201065f32449b9df7d34df9063a57d380b59db675fbb45df6d711";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost builtin-interfaces diagnostic-updater laser-proc rclcpp rclcpp-components rosidl-default-generators sensor-msgs std-srvs urdf urg-c urg-node-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "urg_node";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
