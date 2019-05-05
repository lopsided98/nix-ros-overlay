
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, map-server, tf2-msgs, tf2-geometry-msgs, python-orocos-kdl, rosbag, catkin, sensor-msgs, message-filters, tf2-ros, tf2, rostest, nav-msgs, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-amcl";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/amcl/1.16.2-0.tar.gz;
    sha256 = "01fc59bbf881b23905d1df0d056f0d2a76d1ce4801c70e68f3f6bfb7f2a6c818";
  };

  buildInputs = [ std-srvs tf2-msgs tf2-geometry-msgs rosbag sensor-msgs message-filters tf2-ros tf2 nav-msgs dynamic-reconfigure roscpp geometry-msgs ];
  checkInputs = [ rostest python-orocos-kdl map-server ];
  propagatedBuildInputs = [ std-srvs tf2-msgs rosbag sensor-msgs tf2-ros tf2 nav-msgs dynamic-reconfigure roscpp geometry-msgs ];
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
