
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, nav-msgs, topic-tools, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-message-to-tf";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/kinetic/message_to_tf/0.3.0-0.tar.gz;
    sha256 = "8074a5e21accd7b79eccb72a80a6d033ed39299d0368d9185b8f2e0d23a65c35";
  };

  propagatedBuildInputs = [ nav-msgs topic-tools sensor-msgs roscpp geometry-msgs tf ];
  nativeBuildInputs = [ nav-msgs catkin topic-tools sensor-msgs roscpp geometry-msgs tf ];

  meta = {
    description = ''message_to_tf translates pose information from different kind of common_msgs message types to tf. Currently the node supports nav_msgs/Odometry, geometry_msgs/PoseStamped and sensor_msgs/Imu messages as input.
    The resulting transform is divided into three subtransforms with intermediate frames for the footprint and the stabilized base frame (without roll and pitch).'';
    #license = lib.licenses.BSD;
  };
}
