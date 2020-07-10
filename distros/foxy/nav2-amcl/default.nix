
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch-ros, launch-testing, message-filters, nav-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-nav2-amcl";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/nav2_amcl/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "7f53399027c594755fbbbc2b0c83d22fc3019effc39c7e70dfa0274efc532fe4";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch-ros launch-testing message-filters nav-msgs nav2-msgs nav2-util rclcpp sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
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
    license = with lib.licenses; [ lgpl21 ];
  };
}
