
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-transport, message-generation, message-runtime, pluginlib, roscpp, sensor-msgs, std-msgs, zdepth }:
buildRosPackage {
  pname = "ros-noetic-zdepth-image-transport";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/zdepth_image_transport/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "2ea4f4279969f928e241ffba1e2b3f56bd8a99c745423aadaa5a56a71b27909b";
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
