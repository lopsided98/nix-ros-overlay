
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, diagnostic-updater, laser-proc, rclcpp, rclcpp-components, rosidl-default-generators, sensor-msgs, std-srvs, urg-c, urg-node-msgs }:
buildRosPackage {
  pname = "ros-rolling-urg-node";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node-release/archive/release/rolling/urg_node/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "920ebf6f719357d93a0224c9a582ad2c4bf3b127b845f0a61fd3f6820ab508c9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost builtin-interfaces diagnostic-updater laser-proc rclcpp rclcpp-components rosidl-default-generators sensor-msgs std-srvs urg-c urg-node-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''urg_node'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
