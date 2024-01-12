
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mocap-optitrack";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mocap_optitrack-release/archive/release/humble/mocap_optitrack/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "996d47b0ca20ad8140352f08326ac30039d0c9b4b402389b477a5795c8b1e777";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

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
