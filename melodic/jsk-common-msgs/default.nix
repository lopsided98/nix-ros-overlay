
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, speech-recognition-msgs, jsk-hark-msgs, jsk-footstep-msgs, catkin, posedetection-msgs, jsk-gui-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-common-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common_msgs-release/archive/release/melodic/jsk_common_msgs/4.3.1-0.tar.gz;
    sha256 = "3b58085e4249a1b809d2e657158c595336460295578ba0cfe369f8006f0cfc85";
  };

  propagatedBuildInputs = [ speech-recognition-msgs jsk-hark-msgs jsk-footstep-msgs posedetection-msgs jsk-gui-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used messages for jsk-ros-pkg</p>'';
    #license = lib.licenses.BSD;
  };
}
