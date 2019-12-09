
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, dynamic-reconfigure, map-server, std-srvs, catkin, tf2, tf2-geometry-msgs, python-orocos-kdl, tf2-msgs, roscpp, rosbag, nav-msgs, rostest, tf2-ros, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-amcl";
  version = "1.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/amcl/1.16.3-1.tar.gz";
    name = "1.16.3-1.tar.gz";
    sha256 = "f17f7b2cc6538eb683edca1914a0dc56399c41b1f7ae23dbaaeda2abc0d94503";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters geometry-msgs dynamic-reconfigure std-srvs roscpp tf2-geometry-msgs tf2-msgs tf2 rosbag nav-msgs tf2-ros diagnostic-updater ];
  checkInputs = [ map-server python-orocos-kdl rostest ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs dynamic-reconfigure std-srvs tf2 tf2-msgs roscpp rosbag nav-msgs tf2-ros diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

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
