
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mini-maxwell, libcmt, rosping, ffha, rostwitter, opt-camera, libsiftfast, julius, slic, bayesian-belief-networks, voice-text, rospatlite, catkin, ff, pgm-learner, downward, julius-ros, assimp-devel, nlopt }:
buildRosPackage {
  pname = "ros-lunar-jsk-3rdparty";
  version = "2.1.11-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/jsk_3rdparty/2.1.11-2.tar.gz;
    sha256 = "2c2e51348409186e79dda188d64867d8b0475ad86220254f3b020d288000edc3";
  };

  propagatedBuildInputs = [ bayesian-belief-networks voice-text rospatlite libsiftfast libcmt rosping julius julius-ros opt-camera mini-maxwell slic ff pgm-learner ffha rostwitter assimp-devel downward nlopt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>'';
    #license = lib.licenses.BSD;
  };
}
