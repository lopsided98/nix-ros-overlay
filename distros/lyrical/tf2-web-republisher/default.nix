
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, geometry-msgs, rclcpp, rclcpp-action, rclcpp-components, tf2, tf2-ros, tf2-web-republisher-interfaces }:
buildRosPackage {
  pname = "ros-lyrical-tf2-web-republisher";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf2_web_republisher-release/archive/release/lyrical/tf2_web_republisher/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "d72a35a38013af1c0221f174aca1795974574bb7cb652ed8d5e90e8d2a19cf77";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rclcpp-action rclcpp-components tf2 tf2-ros tf2-web-republisher-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Republishing of Selected TFs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
