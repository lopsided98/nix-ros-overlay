
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gateway-msgs, rocon-console, rocon-python-comms, rosgraph, rosservice, rostest, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-rocon-gateway-utils";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_gateway_utils/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "a9114e4cca859099aef130642d566207f6f75f5192fa3187f7d12c2c958c61b5";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ gateway-msgs rocon-console rocon-python-comms rosgraph rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utilities for gateway users (avoids large dependency requirements).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
