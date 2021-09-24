
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-er-public-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/enabled-robotics/er_public_msgs-release/archive/release/melodic/er_public_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "2972efbea34c8656d0bda3483c2df3365ad0d595d703f71e7a15433981cb7c7c";
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
