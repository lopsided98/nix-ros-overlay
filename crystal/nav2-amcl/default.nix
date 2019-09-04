
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-tasks, nav2-common, geometry-msgs, ament-cmake-pytest, ament-cmake-gtest, launch, message-filters, nav2-util, rclcpp, nav2-dynamic-params, std-srvs, tf2-geometry-msgs, tf2-ros, nav-msgs, launch-ros, ament-lint-common, launch-testing, sensor-msgs, tf2, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-amcl";
  version = "0.1.7";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_amcl/0.1.7-0.tar.gz;
    sha256 = "620d841b5f5db364761592c12a070d998a234a9fb44a94626f6f634486715ccf";
  };

  buildInputs = [ nav2-dynamic-params std-srvs nav2-tasks launch-ros tf2-geometry-msgs launch-testing sensor-msgs message-filters nav2-util tf2-ros nav2-common tf2 nav-msgs rclcpp geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ nav2-dynamic-params std-srvs nav2-tasks launch-ros tf2-geometry-msgs launch-testing sensor-msgs message-filters nav2-util tf2-ros tf2 nav-msgs rclcpp geometry-msgs ];
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
    license = with lib.licenses; [ lgpl2 ];
  };
}
