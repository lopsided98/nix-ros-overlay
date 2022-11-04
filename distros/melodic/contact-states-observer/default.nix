
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, roseus, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-contact-states-observer";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/contact_states_observer/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "7753ed21e860b6a2a5c32dbedceb3854726856e6f7d224b09e6338f1bd0f8a4f";
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
