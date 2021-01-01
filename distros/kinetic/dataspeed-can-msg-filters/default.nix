
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-can-msg-filters";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/kinetic/dataspeed_can_msg_filters/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "f0bd3fac873a161c3598f72f0655760df8ff59f29137f20cf1aa09ed8dfadcae";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ can-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time synchronize multiple CAN messages to get a single callback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
