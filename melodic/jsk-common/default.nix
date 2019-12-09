
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-topic-tools, multi-map-server, virtual-force-publisher, dynamic-tf-publisher, catkin, image-view2, jsk-network-tools, jsk-tools, jsk-tilt-laser }:
buildRosPackage {
  pname = "ros-melodic-jsk-common";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/jsk_common/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "f199dfa0fec8ff6d0e253344ab11deb511b0d1f300f4473845803b2a1c54db2f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ jsk-topic-tools multi-map-server virtual-force-publisher dynamic-tf-publisher image-view2 jsk-network-tools jsk-tools jsk-tilt-laser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
