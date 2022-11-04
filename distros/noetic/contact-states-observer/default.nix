
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, roseus, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-contact-states-observer";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/contact_states_observer/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "88c288a02dac2522b264eccaef37196c36948c6e3c94cae37c910ca22fcf2609";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ roseus std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The contact_states_observer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
