
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libsiftfast, pgm-learner, nlopt, mini-maxwell, julius-ros, julius, ff, assimp-devel, ffha, catkin, rospatlite, slic, downward, sesame-ros, rosping, voice-text, opt-camera, libcmt, bayesian-belief-networks }:
buildRosPackage {
  pname = "ros-kinetic-jsk-3rdparty";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/jsk_3rdparty/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "7684da53f0670e72b9486f969749c318e49534fb315b6c339e5695f3368d6402";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ff opt-camera libsiftfast mini-maxwell julius-ros pgm-learner rospatlite nlopt slic downward sesame-ros assimp-devel libcmt julius rosping voice-text ffha bayesian-belief-networks ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
