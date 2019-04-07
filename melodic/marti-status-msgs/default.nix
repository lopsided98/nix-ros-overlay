
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-marti-status-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/melodic/marti_status_msgs/0.8.0-0.tar.gz;
    sha256 = "bd4b4f53d0139048213d1131994307fd26bcbcde7418764247d6253e4bbd2099";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_status_msgs'';
    #license = lib.licenses.BSD;
  };
}
