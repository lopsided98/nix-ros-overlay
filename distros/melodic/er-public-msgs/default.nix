
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-er-public-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/enabled-robotics/er_public_msgs-release/archive/release/melodic/er_public_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "3cf914fbbab8f498ab045542807b3f94f4179c46a469847ef92a9172b9f35f83";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Enabled Robotics public messages package'';
    license = with lib.licenses; [ mit ];
  };
}
