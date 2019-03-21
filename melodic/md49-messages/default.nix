
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-md49-messages";
  version = "0.1.4-r1";

  src = fetchurl {
    url = https://github.com/Scheik/md49_base_controller-release/archive/release/melodic/md49_messages/0.1.4-1.tar.gz;
    sha256 = "490add7ab7660314b642b0fc9275ef33506a09326194e3d91b21f1229f86d17c";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''The md49_messages package'';
    #license = lib.licenses.BSD;
  };
}
