
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, geometry-msgs, map-server, message-filters, nav-msgs, python3Packages, rosbag, roscpp, rostest, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-amcl";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/amcl/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "c3c1da52bed8f467982fc733c2658bbb9997215837ec2aa500121583cff587bd";
  };

  buildType = "catkin";
  buildInputs = [ message-filters tf2-geometry-msgs ];
  checkInputs = [ map-server python3Packages.pykdl rostest ];
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
    license = with lib.licenses; [ lgpl2 ];
  };
}
