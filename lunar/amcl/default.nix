
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, map-server, tf, rosbag, catkin, message-filters, rostest, nav-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-lunar-amcl";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/amcl/1.15.2-0.tar.gz;
    sha256 = "4773e534ed686e0a29823d07a2113c58250ca793bac8d13321cfabd0127c8d22";
  };

  buildInputs = [ std-srvs rosbag message-filters roscpp nav-msgs dynamic-reconfigure tf ];
  checkInputs = [ rostest map-server ];
  propagatedBuildInputs = [ std-srvs rosbag roscpp nav-msgs dynamic-reconfigure tf ];
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
