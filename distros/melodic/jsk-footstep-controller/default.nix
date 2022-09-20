
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, genmsg, geometry-msgs, jsk-footstep-msgs, jsk-footstep-planner, jsk-pcl-ros, jsk-topic-tools, kdl-conversions, kdl-parser, message-filters, message-generation, sensor-msgs, sound-play, std-msgs, tf, tf-conversions, tf2, urdf }:
buildRosPackage {
  pname = "ros-melodic-jsk-footstep-controller";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/jsk_footstep_controller/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "a161d00c73f6aa7ac668afe4d8604bcb86381ad8bf82aa595e0e1370cfdb276f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater dynamic-reconfigure genmsg geometry-msgs jsk-footstep-msgs jsk-footstep-planner jsk-pcl-ros jsk-topic-tools kdl-conversions kdl-parser message-filters message-generation sensor-msgs sound-play std-msgs tf tf-conversions tf2 urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_footstep_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
