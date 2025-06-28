
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, message-filters, nav-msgs, nav2-common, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-amcl";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_amcl/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "0ed03dda8714425bb8def3c52aa5875e13bed402b0cfe0260ce019522afbc602";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs message-filters nav-msgs nav2-msgs nav2-util pluginlib rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "<p>
      amcl is a probabilistic localization system for a robot moving in
      2D. It implements the adaptive (or KLD-sampling) Monte Carlo
      localization approach (as described by Dieter Fox), which uses a
      particle filter to track the pose of a robot against a known map.
    </p>
    <p>
      This node is derived, with thanks, from Andrew Howard's excellent
      'amcl' Player driver.
    </p>";
    license = with lib.licenses; [ "LGPL-2.1-or-later" ];
  };
}
