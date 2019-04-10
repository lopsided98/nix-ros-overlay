
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, speech-recognition-msgs, jsk-hark-msgs, jsk-footstep-msgs, catkin, posedetection-msgs, jsk-gui-msgs }:
buildRosPackage {
  pname = "ros-lunar-jsk-common-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common_msgs-release/archive/release/lunar/jsk_common_msgs/4.3.1-0.tar.gz;
    sha256 = "2be9993a9fb506fb504b2c98056daf280f1cc5fae6a96f167271658e8a78fcb0";
  };

  propagatedBuildInputs = [ speech-recognition-msgs jsk-hark-msgs jsk-footstep-msgs posedetection-msgs jsk-gui-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used messages for jsk-ros-pkg</p>'';
    #license = lib.licenses.BSD;
  };
}
