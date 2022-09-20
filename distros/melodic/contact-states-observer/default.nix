
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, roseus, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-contact-states-observer";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/contact_states_observer/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "940d7ad50de2cd188ed41368b8ba95e73134e5a80d8892412b8b47085431e8c4";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ roseus std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The contact_states_observer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
