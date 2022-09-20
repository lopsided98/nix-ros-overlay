
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-video-recorder, catkin, dynamic-tf-publisher, image-view2, jsk-network-tools, jsk-tilt-laser, jsk-tools, jsk-topic-tools, multi-map-server, virtual-force-publisher }:
buildRosPackage {
  pname = "ros-melodic-jsk-common";
  version = "2.2.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/jsk_common/2.2.12-1.tar.gz";
    name = "2.2.12-1.tar.gz";
    sha256 = "8f062c2a196d3cc4e5176b3483147f308002a3a957e0e6bf59796af9d9ab323c";
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
