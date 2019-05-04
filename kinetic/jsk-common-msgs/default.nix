
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, speech-recognition-msgs, jsk-hark-msgs, jsk-footstep-msgs, catkin, posedetection-msgs, jsk-gui-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-common-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common_msgs-release/archive/release/kinetic/jsk_common_msgs/4.3.1-0.tar.gz;
    sha256 = "1d518dbd1f6105588e087c459fe4e1b1270378437d3fe27d8ca5d02372550e43";
  };

  propagatedBuildInputs = [ speech-recognition-msgs jsk-hark-msgs jsk-footstep-msgs jsk-gui-msgs posedetection-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used messages for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
