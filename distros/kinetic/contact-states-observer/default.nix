
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, roseus, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-contact-states-observer";
  version = "0.1.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/kinetic/contact_states_observer/0.1.14-0.tar.gz";
    name = "0.1.14-0.tar.gz";
    sha256 = "1889a019db8edb415f7aa7f1fc44d3aded886b64e4dff57ffbfa5c8c7d9485c9";
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
