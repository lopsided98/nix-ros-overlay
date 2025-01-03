
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, diagnostic-updater, laser-proc, rclcpp, rclcpp-components, rosidl-default-generators, sensor-msgs, std-srvs, urdf, urg-c, urg-node-msgs }:
buildRosPackage {
  pname = "ros-jazzy-urg-node";
  version = "1.1.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node-release/archive/release/jazzy/urg_node/1.1.1-4.tar.gz";
    name = "1.1.1-4.tar.gz";
    sha256 = "edb80cbc01405c9900c589c9b394e46890160d285b00255be7d90ed6f8a6efa8";
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
