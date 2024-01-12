
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-footstep-msgs, jsk-gui-msgs, jsk-hark-msgs, posedetection-msgs, speech-recognition-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-common-msgs";
  version = "4.3.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/noetic/jsk_common_msgs/4.3.2-1.tar.gz";
    name = "4.3.2-1.tar.gz";
    sha256 = "97e34ef1a7a0d001ee6fd9f2a660bec245c92deb96bf0baa14009babb5a8df86";
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
