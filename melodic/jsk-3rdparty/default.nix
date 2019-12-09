
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libsiftfast, pgm-learner, nlopt, rostwitter, mini-maxwell, julius-ros, julius, ff, assimp-devel, ffha, catkin, rospatlite, slic, downward, rosping, voice-text, opt-camera, libcmt, bayesian-belief-networks }:
buildRosPackage {
  pname = "ros-melodic-jsk-3rdparty";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/jsk_3rdparty/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "02d69f80483c89610e51bcdf01402a6197ab274a0af752f67903c602fad08650";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ff opt-camera libsiftfast mini-maxwell julius-ros pgm-learner rospatlite nlopt slic downward rostwitter assimp-devel libcmt julius rosping voice-text ffha bayesian-belief-networks ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
