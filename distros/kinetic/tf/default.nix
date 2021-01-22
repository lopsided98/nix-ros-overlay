
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, geometry-msgs, graphviz, message-filters, message-generation, message-runtime, rosconsole, roscpp, rostest, rostime, rosunit, roswtf, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-tf";
  version = "1.11.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/kinetic/tf/1.11.9-0.tar.gz";
    name = "1.11.9-0.tar.gz";
    sha256 = "145ad3bd3c5ea0b4b1ff224c39eb03ba5b719f016609f6960589658a9687f53f";
  };

  buildType = "catkin";
  buildInputs = [ angles message-generation rostime ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs graphviz message-filters message-runtime rosconsole roscpp roswtf sensor-msgs std-msgs tf2-ros ];
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
