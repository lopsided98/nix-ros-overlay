
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-topic-tools, multi-map-server, virtual-force-publisher, dynamic-tf-publisher, catkin, image-view2, jsk-network-tools, jsk-tools, jsk-tilt-laser }:
buildRosPackage {
  pname = "ros-kinetic-jsk-common";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_common/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "1ea36fd5c67335b9f62444aa89bdd0d8321f8373c1975f01185f8900d8503417";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ jsk-topic-tools multi-map-server virtual-force-publisher dynamic-tf-publisher image-view2 jsk-network-tools jsk-tools jsk-tilt-laser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
