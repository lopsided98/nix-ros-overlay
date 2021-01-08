
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, eigen-conversions, kdl-conversions, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-geometry";
  version = "1.11.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/kinetic/geometry/1.11.9-0.tar.gz";
    name = "1.11.9-0.tar.gz";
    sha256 = "65d56ee2cd5b9a614b33c97035e304671f910432a1c130be7cfb27911d4e5df5";
  };

  buildType = "catkin";
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
