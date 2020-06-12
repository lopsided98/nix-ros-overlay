
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, diagnostic-updater, laser-proc, rclcpp, rclcpp-components, rosidl-default-generators, sensor-msgs, std-srvs, urg-c, urg-node-msgs }:
buildRosPackage {
  pname = "ros-eloquent-urg-node";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node-release/archive/release/eloquent/urg_node/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "e52d647c539ceec13161fa8caba32113d8ec1d47247077c4561c7db999345ca7";
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
