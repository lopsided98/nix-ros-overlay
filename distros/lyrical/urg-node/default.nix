
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, diagnostic-updater, laser-proc, rclcpp, rclcpp-components, rosidl-default-generators, sensor-msgs, std-srvs, urdf, urg-c, urg-node-msgs }:
buildRosPackage {
  pname = "ros-lyrical-urg-node";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node-release/archive/release/lyrical/urg_node/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "650ef03f552a8f787664f20398912bdfc8fe6fe65c8cf17a77eef006d195a22f";
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
