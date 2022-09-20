
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roslint, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-network-interface";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/astuff/network_interface-release/archive/release/melodic/network_interface/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "5998b4fc5c5a96474d6a2ab83d3c55f7f5e847af5f909f00176deda4f6612ccf";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Network interfaces and messages.'';
    license = with lib.licenses; [ mit ];
  };
}
