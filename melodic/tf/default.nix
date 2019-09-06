
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, roswtf, sensor-msgs, catkin, message-filters, rostime, tf2-ros, rostest, message-generation, message-runtime, angles, std-msgs, rosunit, roscpp, graphviz, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-tf";
  version = "1.12.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/melodic/tf/1.12.0-0.tar.gz";
    name = "1.12.0-0.tar.gz";
    sha256 = "00d706fa94be4c4348556e8985dae8be407e76aae3f767e92dbd35e206f5ab03";
  };

  buildType = "catkin";
  buildInputs = [ rosconsole sensor-msgs message-filters roscpp tf2-ros message-generation angles std-msgs rostime geometry-msgs ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ rosconsole roswtf sensor-msgs message-filters tf2-ros message-runtime std-msgs roscpp graphviz geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf is a package that lets the user keep track of multiple coordinate
frames over time. tf maintains the relationship between coordinate
frames in a tree structure buffered in time, and lets the user
transform points, vectors, etc between any two coordinate frames at
any desired point in time.

    <p><b>Migration</b>: Since ROS Hydro, tf has been &quot;deprecated&quot; in favor of <a href="http://wiki.ros.org/tf2">tf2</a>. tf2 is an iteration on tf providing generally the same feature set more efficiently. As well as adding a few new features.<br/>
    As tf2 is a major change the tf API has been maintained in its current form. Since tf2 has a superset of the tf features with a subset of the dependencies the tf implementation has been removed and replaced with calls to tf2 under the hood. This will mean that all users will be compatible with tf2. It is recommended for new work to use tf2 directly as it has a cleaner interface. However tf will continue to be supported for through at least J Turtle.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
