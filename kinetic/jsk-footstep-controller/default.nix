
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, urdf, jsk-pcl-ros, tf, jsk-footstep-msgs, tf2, kdl-parser, sensor-msgs, diagnostic-msgs, dynamic-reconfigure, sound-play, jsk-topic-tools, message-filters, std-msgs, catkin, message-generation, jsk-footstep-planner, kdl-conversions, genmsg, diagnostic-updater, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-jsk-footstep-controller";
  version = "0.1.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_footstep_controller/0.1.14-0.tar.gz";
    name = "0.1.14-0.tar.gz";
    sha256 = "505e22ef5da1d1fce30367dee7c5b216bd24b4cccdc32d0b8a995420d62d6368";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs urdf jsk-pcl-ros tf jsk-footstep-msgs tf2 kdl-parser sensor-msgs diagnostic-msgs dynamic-reconfigure jsk-topic-tools message-filters std-msgs jsk-footstep-planner message-generation kdl-conversions genmsg diagnostic-updater tf-conversions ];
  propagatedBuildInputs = [ geometry-msgs urdf jsk-pcl-ros tf jsk-footstep-msgs tf2 kdl-parser sensor-msgs diagnostic-msgs dynamic-reconfigure sound-play jsk-topic-tools message-filters std-msgs jsk-footstep-planner message-generation kdl-conversions genmsg diagnostic-updater tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_footstep_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
