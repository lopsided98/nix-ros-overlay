
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-jsk-hark-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common_msgs-release/archive/release/kinetic/jsk_hark_msgs/4.3.1-0.tar.gz;
    sha256 = "fefb28507bf08df56728f9b54e38174091c1b953d85596b3a04248355b9a266c";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''jsk_hark_msgs'';
    #license = lib.licenses.BSD;
  };
}
