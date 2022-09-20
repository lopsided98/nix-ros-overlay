
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-er-public-msgs";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/enabled-robotics/er_public_msgs-release/archive/release/melodic/er_public_msgs/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "99d548a04ceb0efb2eb1c6ee68d91041b90e466ff69d71b53e65ffa91b16f860";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Enabled Robotics public messages package'';
    license = with lib.licenses; [ mit ];
  };
}
