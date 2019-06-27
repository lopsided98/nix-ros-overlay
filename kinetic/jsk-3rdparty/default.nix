
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bayesian-belief-networks, voice-text, rospatlite, libcmt, mini-maxwell, rosping, opt-camera, libsiftfast, catkin, julius-ros, julius, slic, ff, pgm-learner, ffha, assimp-devel, downward, nlopt }:
buildRosPackage {
  pname = "ros-kinetic-jsk-3rdparty";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/jsk_3rdparty/2.1.12-1.tar.gz;
    sha256 = "fafe4a76842264d55b9de0dcbd47ba80a43ef469ffa497cbd5ad3e8208bf7217";
  };

  propagatedBuildInputs = [ bayesian-belief-networks voice-text rospatlite libsiftfast libcmt rosping julius julius-ros opt-camera mini-maxwell slic ff pgm-learner ffha assimp-devel downward nlopt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
