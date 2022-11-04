
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-md49-messages";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/Scheik/md49_base_controller-release/archive/release/melodic/md49_messages/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "490add7ab7660314b642b0fc9275ef33506a09326194e3d91b21f1229f86d17c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The md49_messages package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
