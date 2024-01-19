
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, eigen-conversions, kdl-conversions, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-noetic-geometry";
  version = "1.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/noetic/geometry/1.13.2-1.tar.gz";
    name = "1.13.2-1.tar.gz";
    sha256 = "45d3dd1724ca4416f16efbc51f6bb9e8fd1eb72db66cd0b7392b83d7d6eb9e1f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles eigen-conversions kdl-conversions tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>A metapackage for geometry library suite.</p>
    <p><b>Migration</b>: Since ROS Hydro, tf has been &quot;deprecated&quot; in favor of <a href="http://wiki.ros.org/tf2">tf2</a>. tf2 is an iteration on tf providing generally the same feature set more efficiently. As well as adding a few new features.<br/>
    As tf2 is a major change the tf API has been maintained in its current form. Since tf2 has a superset of the tf features with a subset of the dependencies the tf implementation has been removed and replaced with calls to tf2 under the hood. This will mean that all users will be compatible with tf2. It is recommended for new work to use tf2 directly as it has a cleaner interface. However tf will continue to be supported for through at least J Turtle.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
