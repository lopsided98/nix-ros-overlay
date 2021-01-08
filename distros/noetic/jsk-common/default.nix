
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-tf-publisher, image-view2, jsk-network-tools, jsk-tilt-laser, jsk-tools, jsk-topic-tools, multi-map-server, virtual-force-publisher }:
buildRosPackage {
  pname = "ros-noetic-jsk-common";
  version = "2.2.11-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/jsk_common/2.2.11-2.tar.gz";
    name = "2.2.11-2.tar.gz";
    sha256 = "9ee5054f39d5142c74fa731f7d481591fd93a3bd0b95efe1302ed6c8d63d9653";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-tf-publisher image-view2 jsk-network-tools jsk-tilt-laser jsk-tools jsk-topic-tools multi-map-server virtual-force-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
