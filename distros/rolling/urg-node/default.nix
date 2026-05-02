
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, diagnostic-updater, laser-proc, rclcpp, rclcpp-components, rosidl-default-generators, sensor-msgs, std-srvs, urdf, urg-c, urg-node-msgs }:
buildRosPackage {
  pname = "ros-rolling-urg-node";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node-release/archive/release/rolling/urg_node/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "53922bf056efeb5e1a81d7867a8ec9727a929a53bf0c97d1ecf29219207cd362";
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
