
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, roseus, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-contact-states-observer";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/contact_states_observer/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "ad710994c9a5aba31155bf8028f44bb94f1c36f95d1e5a898b693e61c5e2c7af";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ roseus std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The contact_states_observer package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
