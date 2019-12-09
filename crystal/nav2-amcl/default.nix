
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-cmake, nav2-dynamic-params, tf2, nav2-tasks, nav2-util, nav-msgs, ament-lint-auto, sensor-msgs, launch-testing, ament-lint-common, tf2-geometry-msgs, nav2-common, rclcpp, ament-cmake-gtest, tf2-ros, message-filters, std-srvs, launch, launch-ros, ament-cmake-pytest }:
buildRosPackage {
  pname = "ros-crystal-nav2-amcl";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_amcl/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "620d841b5f5db364761592c12a070d998a234a9fb44a94626f6f634486715ccf";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs message-filters geometry-msgs launch-testing std-srvs launch-ros tf2-geometry-msgs nav2-common nav2-dynamic-params tf2 nav2-tasks nav2-util rclcpp nav-msgs tf2-ros ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs launch-testing std-srvs launch-ros tf2-geometry-msgs nav2-dynamic-params tf2 nav2-tasks nav2-util rclcpp nav-msgs tf2-ros ];
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
