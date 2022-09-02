
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, roslaunch, roslint, tf }:
buildRosPackage {
  pname = "ros-noetic-mocap-nokov";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/NOKOV-MOCAP/mocap_nokov_release/archive/release/noetic/mocap_nokov/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "63a3a439a048a0d9a09bad81fb283cb4697e552709be63b13b1b4dd3e6f0c6ab";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Streaming of Nokov mocap data to tf
    <p>
    This package contains a node that translates motion capture data from an
    nokov rig to tf transforms, poses and 2D poses.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
