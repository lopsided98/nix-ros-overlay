
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-video-recorder, catkin, dynamic-tf-publisher, image-view2, jsk-network-tools, jsk-tilt-laser, jsk-tools, jsk-topic-tools, multi-map-server, virtual-force-publisher }:
buildRosPackage {
  pname = "ros-noetic-jsk-common";
  version = "2.2.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/jsk_common/2.2.12-1.tar.gz";
    name = "2.2.12-1.tar.gz";
    sha256 = "aba0111078224438e6e2135b0553eb2307494052ad39d89f77dc95eab1408945";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ audio-video-recorder dynamic-tf-publisher image-view2 jsk-network-tools jsk-tilt-laser jsk-tools jsk-topic-tools multi-map-server virtual-force-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
