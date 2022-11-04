
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, genmsg, geometry-msgs, jsk-footstep-msgs, jsk-footstep-planner, jsk-pcl-ros, jsk-topic-tools, kdl-conversions, kdl-parser, message-filters, message-generation, sensor-msgs, sound-play, std-msgs, tf, tf-conversions, tf2, urdf }:
buildRosPackage {
  pname = "ros-melodic-jsk-footstep-controller";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/jsk_footstep_controller/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "b3bf67a033ebccb9768bc4dde8624f00af21df0be6b1d86eb0254c58796cbfe8";
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
