
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, geometry-msgs, rclcpp, rclcpp-action, rclcpp-components, tf2, tf2-ros, tf2-web-republisher-interfaces }:
buildRosPackage {
  pname = "ros-jazzy-tf2-web-republisher";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf2_web_republisher-release/archive/release/jazzy/tf2_web_republisher/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "691075e22031f81b2a28f28a1206019a4438583765619060c4fb317947b884d7";
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
