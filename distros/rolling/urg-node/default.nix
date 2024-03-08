
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, diagnostic-updater, laser-proc, rclcpp, rclcpp-components, rosidl-default-generators, sensor-msgs, std-srvs, urdf, urg-c, urg-node-msgs }:
buildRosPackage {
  pname = "ros-rolling-urg-node";
  version = "1.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node-release/archive/release/rolling/urg_node/1.1.1-3.tar.gz";
    name = "1.1.1-3.tar.gz";
    sha256 = "38ac366946e23f921b89a4b13976efabfface098bb22b83d4e59c92be65e9d91";
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
