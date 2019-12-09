
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-cmake, tf2, nav2-util, nav-msgs, ament-lint-auto, sensor-msgs, launch-testing, ament-lint-common, tf2-geometry-msgs, nav2-common, rclcpp, tf2-ros, ament-cmake-gtest, message-filters, std-srvs, launch, launch-ros, ament-cmake-pytest }:
buildRosPackage {
  pname = "ros-dashing-nav2-amcl";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_amcl/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "db217ced1e3fcc3af4dc1204305c05e192ebb4af17c93f7661fad9b9717d849b";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs message-filters geometry-msgs launch-testing std-srvs launch-ros tf2-geometry-msgs nav2-common tf2 nav2-util rclcpp nav-msgs tf2-ros ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs launch-testing std-srvs launch-ros tf2-geometry-msgs tf2 nav2-util rclcpp nav-msgs tf2-ros ];
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
