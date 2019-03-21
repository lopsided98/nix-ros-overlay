
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-marti-status-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/kinetic/marti_status_msgs/0.8.0-0.tar.gz;
    sha256 = "0503a1823338389bba397c4a000f65ca2c5d8c99c250dd9b9698bab0d89ae632";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''marti_status_msgs'';
    #license = lib.licenses.BSD;
  };
}
