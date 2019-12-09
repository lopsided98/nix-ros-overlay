
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-filters, dynamic-reconfigure, map-server, std-srvs, tf, catkin, roscpp, rosbag, nav-msgs, rostest }:
buildRosPackage {
  pname = "ros-kinetic-amcl";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/amcl/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "0657fe6cc0c2c31c59edab28305e53991f9db8b72ac333c0e5ed4abfb62200fe";
  };

  buildType = "catkin";
  buildInputs = [ message-filters dynamic-reconfigure std-srvs tf roscpp rosbag nav-msgs ];
  checkInputs = [ map-server rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure std-srvs tf roscpp rosbag nav-msgs ];
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
