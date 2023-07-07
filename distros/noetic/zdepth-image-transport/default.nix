
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-transport, message-generation, message-runtime, pluginlib, roscpp, sensor-msgs, std-msgs, zdepth }:
buildRosPackage {
  pname = "ros-noetic-zdepth-image-transport";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/zdepth_image_transport/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "e5df7326a2651d97968d72033827823025f3f734d7241dd1dd45a5487062a2b0";
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
