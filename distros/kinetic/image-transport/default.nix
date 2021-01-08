
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, pluginlib, rosconsole, roscpp, roslib, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-image-transport";
  version = "1.11.13";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/kinetic/image_transport/1.11.13-0.tar.gz";
    name = "1.11.13-0.tar.gz";
    sha256 = "6f9e7abf09c1ac9f8b8ea7f6df2c49f88c7708a5feefe25089bda48a877fef22";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-filters pluginlib rosconsole roscpp roslib sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''image_transport should always be used to subscribe to and publish images. It provides transparent
     support for transporting images in low-bandwidth compressed formats. Examples (provided by separate
     plugin packages) include JPEG/PNG compression and Theora streaming video.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
