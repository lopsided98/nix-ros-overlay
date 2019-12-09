
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, posedetection-msgs, jsk-hark-msgs, speech-recognition-msgs, jsk-gui-msgs, catkin, jsk-footstep-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-common-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/melodic/jsk_common_msgs/4.3.1-0.tar.gz";
    name = "4.3.1-0.tar.gz";
    sha256 = "3b58085e4249a1b809d2e657158c595336460295578ba0cfe369f8006f0cfc85";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ posedetection-msgs jsk-hark-msgs speech-recognition-msgs jsk-gui-msgs jsk-footstep-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used messages for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
