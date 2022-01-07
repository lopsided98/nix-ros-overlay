
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, roslaunch, roslint, tf }:
buildRosPackage {
  pname = "ros-noetic-mocap-optitrack";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/mocap_optitrack-release/archive/release/noetic/mocap_optitrack/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "f716b1b8ee1eb54407d3105c99823da87bb1a8dacc9ee18069e21e0e60084ea7";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Streaming of OptiTrack mocap data to tf
    <p>
    This package contains a node that translates motion capture data from an
    OptiTrack rig to tf transforms, poses and 2D poses. The node receives
    packets that are streamed by a NatNet compliant source, decodes them and
    broadcasts the poses of configured rigid bodies as tf transforms, poses,
    and/or 2D poses.
    </p>
    <p>
    Currently, this node supports the NatNet streaming protocol v3.0
    </p>
    <p>
    Copyright (c) 2013, Clearpath Robotics<br/> 
    Copyright (c) 2010, University of Bonn, Computer Science Institute VI<br/>
    All rights reserved.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
