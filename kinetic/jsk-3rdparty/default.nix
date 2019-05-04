
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bayesian-belief-networks, voice-text, rospatlite, libcmt, mini-maxwell, rosping, opt-camera, libsiftfast, catkin, julius-ros, julius, slic, ff, pgm-learner, ffha, assimp-devel, downward, nlopt }:
buildRosPackage {
  pname = "ros-kinetic-jsk-3rdparty";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/jsk_3rdparty/2.1.11-0.tar.gz;
    sha256 = "6d44cc3d218f4215a7fec11b0a9a83e0124ef127de7e0c2a7d00382f20527934";
  };

  propagatedBuildInputs = [ bayesian-belief-networks voice-text rospatlite libsiftfast libcmt rosping julius julius-ros opt-camera mini-maxwell slic ff pgm-learner ffha assimp-devel downward nlopt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
