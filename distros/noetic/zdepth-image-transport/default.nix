
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-transport, message-generation, message-runtime, pluginlib, roscpp, sensor-msgs, std-msgs, zdepth }:
buildRosPackage {
  pname = "ros-noetic-zdepth-image-transport";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/zdepth_image_transport/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "79d22d820b58694feed5ed794c92a816c68444bf7d4898f9ee82920725b02bee";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ image-transport message-runtime pluginlib roscpp sensor-msgs std-msgs zdepth ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The zdepth_image_transport package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
