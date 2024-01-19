
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roslint, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-network-interface";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/network_interface-release/archive/release/noetic/network_interface/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "b55512f9cb6c73bfe0ba29cde2a3d47a4e9a8e14e339440a57ccd8a5a1cefaf5";
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
