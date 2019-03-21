
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-marti-common-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/kinetic/marti_common_msgs/0.8.0-0.tar.gz;
    sha256 = "eb138790219a49a0703c2f0b38be87ec73fa7db49ed4ae385a756c5da65619f9";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''marti_common_msgs'';
    #license = lib.licenses.BSD;
  };
}
