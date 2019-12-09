
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, std-msgs, catkin, message-runtime, rosbag-migration-rule }:
buildRosPackage {
  pname = "ros-kinetic-trajectory-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/kinetic/trajectory_msgs/1.12.7-0.tar.gz";
    name = "1.12.7-0.tar.gz";
    sha256 = "353fdb38ae42360f5d134583ddf045c36c6bb959b3406c46257f3e2b0774f5e7";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs rosbag-migration-rule ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages for defining robot trajectories. These messages are
    also the building blocks of most of the
    <a href="http://wiki.ros.org/control_msgs">control_msgs</a> actions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
