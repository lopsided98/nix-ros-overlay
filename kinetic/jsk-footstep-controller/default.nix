
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf-conversions, diagnostic-msgs, tf, geometry-msgs, jsk-footstep-msgs, message-filters, jsk-topic-tools, sound-play, message-generation, genmsg, kdl-conversions, catkin, urdf, jsk-footstep-planner, std-msgs, kdl-parser, jsk-pcl-ros, sensor-msgs, diagnostic-updater, tf2, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-jsk-footstep-controller";
  version = "0.1.14";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_footstep_controller/0.1.14-0.tar.gz;
    sha256 = "505e22ef5da1d1fce30367dee7c5b216bd24b4cccdc32d0b8a995420d62d6368";
  };

  propagatedBuildInputs = [ kdl-conversions urdf jsk-footstep-planner tf-conversions std-msgs diagnostic-msgs tf geometry-msgs kdl-parser jsk-pcl-ros sensor-msgs jsk-footstep-msgs message-filters jsk-topic-tools sound-play diagnostic-updater tf2 message-generation dynamic-reconfigure genmsg ];
  nativeBuildInputs = [ kdl-conversions catkin urdf jsk-footstep-planner diagnostic-msgs tf-conversions std-msgs tf geometry-msgs kdl-parser jsk-pcl-ros sensor-msgs jsk-footstep-msgs message-filters jsk-topic-tools diagnostic-updater tf2 message-generation dynamic-reconfigure genmsg ];

  meta = {
    description = ''The jsk_footstep_controller package'';
    #license = lib.licenses.BSD;
  };
}
