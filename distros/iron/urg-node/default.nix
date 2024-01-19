
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, diagnostic-updater, laser-proc, rclcpp, rclcpp-components, rosidl-default-generators, sensor-msgs, std-srvs, urdf, urg-c, urg-node-msgs }:
buildRosPackage {
  pname = "ros-iron-urg-node";
  version = "1.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node-release/archive/release/iron/urg_node/1.1.1-3.tar.gz";
    name = "1.1.1-3.tar.gz";
    sha256 = "e3fa1ae51a0c58b015c2630956a457a59e4b786018996ce1862226bdb446e32e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost builtin-interfaces diagnostic-updater laser-proc rclcpp rclcpp-components rosidl-default-generators sensor-msgs std-srvs urdf urg-c urg-node-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''urg_node'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
