
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-marti-common-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/melodic/marti_common_msgs/0.8.0-0.tar.gz;
    sha256 = "c03c0fdf0cad432cfd4c62f4c033c229716b763453cdcc76d8c1c9da0b665660";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_common_msgs'';
    #license = lib.licenses.BSD;
  };
}
