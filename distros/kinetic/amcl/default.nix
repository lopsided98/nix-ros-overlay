
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, map-server, message-filters, nav-msgs, rosbag, roscpp, rostest, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-amcl";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/amcl/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "be917ca50baf2ca1a4b54e864c138db11b86f3e84756c643b9c13592b45c3ab9";
  };

  buildType = "catkin";
  buildInputs = [ message-filters ];
  checkInputs = [ map-server rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure nav-msgs rosbag roscpp std-srvs tf ];
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
