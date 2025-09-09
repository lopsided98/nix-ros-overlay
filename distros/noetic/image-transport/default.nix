
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, pluginlib, rosconsole, roscpp, roslib, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-image-transport";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/noetic/image_transport/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "76bde3dd7c5f21ee19ef60116ac6de068529552601e2bb0dfb670b16052afc2b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-filters pluginlib rosconsole roscpp roslib sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "image_transport should always be used to subscribe to and publish images. It provides transparent
     support for transporting images in low-bandwidth compressed formats. Examples (provided by separate
     plugin packages) include JPEG/PNG compression and Theora streaming video.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
