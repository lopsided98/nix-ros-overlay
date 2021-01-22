
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-tf-publisher, image-view2, jsk-network-tools, jsk-tilt-laser, jsk-tools, jsk-topic-tools, multi-map-server, virtual-force-publisher }:
buildRosPackage {
  pname = "ros-kinetic-jsk-common";
  version = "2.2.11-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_common/2.2.11-1.tar.gz";
    name = "2.2.11-1.tar.gz";
    sha256 = "b19d0b386e7a81435034e4557e8d288a73390ab1355e9236d684bff6b503096a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-tf-publisher image-view2 jsk-network-tools jsk-tilt-laser jsk-tools jsk-topic-tools multi-map-server virtual-force-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
