
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mqtt-client-interfaces";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/noetic/mqtt_client_interfaces/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "80c9b0430c76f135a292d909b39169260f06df6872f6d9ac09c43ba89e641cd9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ros-environment std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service definitions for mqtt_client'';
    license = with lib.licenses; [ mit ];
  };
}
