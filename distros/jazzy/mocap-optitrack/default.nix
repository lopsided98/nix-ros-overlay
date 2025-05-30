
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mocap-optitrack";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mocap_optitrack-release/archive/release/jazzy/mocap_optitrack/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "fe30952dd4c5394c7d3bf6cff44596fd3065f628d2d237a50dd0707229a12e06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Streaming of OptiTrack mocap data to tf
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
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
