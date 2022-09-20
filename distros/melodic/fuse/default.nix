
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fuse-constraints, fuse-core, fuse-doc, fuse-graphs, fuse-models, fuse-msgs, fuse-optimizers, fuse-publishers, fuse-variables, fuse-viz }:
buildRosPackage {
  pname = "ros-melodic-fuse";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/melodic/fuse/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "1b4c234605c45fb56e982e84cf9bf59947af23db2659eb7c038a94b5c3062d4a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fuse-constraints fuse-core fuse-doc fuse-graphs fuse-models fuse-msgs fuse-optimizers fuse-publishers fuse-variables fuse-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
