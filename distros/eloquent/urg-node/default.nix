
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, diagnostic-updater, laser-proc, rclcpp, rclcpp-components, rosidl-default-generators, sensor-msgs, std-srvs, urg-c, urg-node-msgs }:
buildRosPackage {
  pname = "ros-eloquent-urg-node";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node-release/archive/release/eloquent/urg_node/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c7f102a5a0be9953f64c6d52c34e7caaf28f35248bd34a68db123d1bef46dc18";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost builtin-interfaces diagnostic-updater laser-proc rclcpp rclcpp-components rosidl-default-generators sensor-msgs std-srvs urg-c urg-node-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''urg_node'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
