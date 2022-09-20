
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, geometry-msgs, map-server, message-filters, nav-msgs, python3Packages, rosbag, roscpp, rostest, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-msgs, tf2-py, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-amcl";
  version = "1.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/amcl/1.17.2-1.tar.gz";
    name = "1.17.2-1.tar.gz";
    sha256 = "176626de453a712746fd4d999d87fec0529884168f63587fba32bdc9a3a27abb";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-filters tf2-geometry-msgs ];
  checkInputs = [ map-server python3Packages.pykdl rostest tf2-py ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure geometry-msgs nav-msgs rosbag roscpp sensor-msgs std-srvs tf2 tf2-msgs tf2-ros ];
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
    license = with lib.licenses; [ "LGPL" ];
  };
}
