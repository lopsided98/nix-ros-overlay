
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, std-srvs, tf, rosbag, catkin, message-filters, rostest, nav-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-amcl";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/kinetic/amcl/1.14.4-0.tar.gz;
    sha256 = "ff24b933e459a835da6a977d20d4a2aa1cef618fde5549798e371910ddcca3ab";
  };

  checkInputs = [ rostest map-server ];
  propagatedBuildInputs = [ std-srvs nav-msgs dynamic-reconfigure tf rosbag roscpp ];
  nativeBuildInputs = [ std-srvs nav-msgs catkin dynamic-reconfigure rosbag tf message-filters roscpp ];

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
    #license = lib.licenses.LGPL;
  };
}
