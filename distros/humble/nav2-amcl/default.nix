
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch-ros, launch-testing, message-filters, nav-msgs, nav2-common, nav2-msgs, nav2-util, pluginlib, rclcpp, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-nav2-amcl";
  version = "1.1.7-r3";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_amcl/1.1.7-3.tar.gz";
    name = "1.1.7-3.tar.gz";
    sha256 = "f94470a3223aed663bce1d297883808c7e6c40bafda0fdb1a1db17f67d488416";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch-ros launch-testing message-filters nav-msgs nav2-msgs nav2-util pluginlib rclcpp sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''<p>
      amcl is a probabilistic localization system for a robot moving in
      2D. It implements the adaptive (or KLD-sampling) Monte Carlo
      localization approach (as described by Dieter Fox), which uses a
      particle filter to track the pose of a robot against a known map.
    </p>
    <p>
      This node is derived, with thanks, from Andrew Howard's excellent
      'amcl' Player driver.
    </p>'';
    license = with lib.licenses; [ "LGPL-2.1-or-later" ];
  };
}
