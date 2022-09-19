
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, diagnostic-updater, laser-proc, rclcpp, rclcpp-components, rosidl-default-generators, sensor-msgs, std-srvs, urg-c, urg-node-msgs }:
buildRosPackage {
  pname = "ros-humble-urg-node";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node-release/archive/release/humble/urg_node/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "0d3965a91c2f7b84ef7ef9fd43b43469dafe0597c9226966faa73bdee70d995f";
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
