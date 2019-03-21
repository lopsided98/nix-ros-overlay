
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-view2, catkin, jsk-tilt-laser, jsk-topic-tools, jsk-network-tools, dynamic-tf-publisher, jsk-tools, virtual-force-publisher, multi-map-server }:
buildRosPackage {
  pname = "ros-kinetic-jsk-common";
  version = "2.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_common/2.2.10-0.tar.gz;
    sha256 = "1ea36fd5c67335b9f62444aa89bdd0d8321f8373c1975f01185f8900d8503417";
  };

  propagatedBuildInputs = [ jsk-network-tools image-view2 dynamic-tf-publisher jsk-tools jsk-tilt-laser virtual-force-publisher jsk-topic-tools multi-map-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used toolset for jsk-ros-pkg</p>'';
    #license = lib.licenses.BSD;
  };
}
