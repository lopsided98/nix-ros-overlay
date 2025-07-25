
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, diagnostic-updater, laser-proc, rclcpp, rclcpp-components, rosidl-default-generators, sensor-msgs, std-srvs, urdf, urg-c, urg-node-msgs }:
buildRosPackage {
  pname = "ros-jazzy-urg-node";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node-release/archive/release/jazzy/urg_node/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "ee7b6c654453360077e8d179b550debcb5fbb30328db902d85473e43c51a57df";
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
