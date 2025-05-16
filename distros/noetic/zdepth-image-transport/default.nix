
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-transport, message-generation, message-runtime, pluginlib, roscpp, sensor-msgs, std-msgs, zdepth }:
buildRosPackage {
  pname = "ros-noetic-zdepth-image-transport";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/zdepth_image_transport/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "83e8610ae1d13b9cc3302e70cfa0e58333ec8e55db444590a53c243add819b60";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ image-transport message-runtime pluginlib roscpp sensor-msgs std-msgs zdepth ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The zdepth_image_transport package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
