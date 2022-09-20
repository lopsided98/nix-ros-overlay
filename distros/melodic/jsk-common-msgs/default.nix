
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-footstep-msgs, jsk-gui-msgs, jsk-hark-msgs, posedetection-msgs, speech-recognition-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-common-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/melodic/jsk_common_msgs/4.3.1-0.tar.gz";
    name = "4.3.1-0.tar.gz";
    sha256 = "3b58085e4249a1b809d2e657158c595336460295578ba0cfe369f8006f0cfc85";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ jsk-footstep-msgs jsk-gui-msgs jsk-hark-msgs posedetection-msgs speech-recognition-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used messages for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
