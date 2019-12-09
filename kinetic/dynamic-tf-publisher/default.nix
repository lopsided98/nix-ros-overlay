
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, dynamic-reconfigure, tf, catkin, rospy, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-dynamic-tf-publisher";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kinetic/dynamic_tf_publisher/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "e023740f057cf56f88f059713cfc862f12a6ab4472da057c94c7b7de39f22e5e";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-reconfigure tf rospy message-generation ];
  propagatedBuildInputs = [ tf message-runtime geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''dynamically set the tf trensformation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
