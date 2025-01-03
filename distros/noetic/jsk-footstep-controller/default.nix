
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, genmsg, geometry-msgs, jsk-footstep-msgs, jsk-footstep-planner, jsk-pcl-ros, jsk-topic-tools, kdl-conversions, kdl-parser, message-filters, message-generation, sensor-msgs, sound-play, std-msgs, tf, tf-conversions, tf2, urdf }:
buildRosPackage {
  pname = "ros-noetic-jsk-footstep-controller";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/jsk_footstep_controller/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "a843ad76e1a6ba375a55337d34c7c395bef74ce4c4b78887256b8819a78b806c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater dynamic-reconfigure genmsg geometry-msgs jsk-footstep-msgs jsk-footstep-planner jsk-pcl-ros jsk-topic-tools kdl-conversions kdl-parser message-filters message-generation sensor-msgs sound-play std-msgs tf tf-conversions tf2 urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The jsk_footstep_controller package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
