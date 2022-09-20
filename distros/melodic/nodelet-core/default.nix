
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, nodelet-topic-tools }:
buildRosPackage {
  pname = "ros-melodic-nodelet-core";
  version = "1.9.16";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/melodic/nodelet_core/1.9.16-0.tar.gz";
    name = "1.9.16-0.tar.gz";
    sha256 = "a0537935c5c1b091cf655f0a31852d72ec54b245b2577d139cd66d33332eea9b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet nodelet-topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Nodelet Core Metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
