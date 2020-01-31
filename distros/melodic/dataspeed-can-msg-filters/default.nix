
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can-msg-filters";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can_msg_filters/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "ac5059d8fc34cd27e9b5704f02766a36ed54e8ec48c4677fc85d1764fb7fb247";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ can-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time synchronize multiple CAN messages to get a single callback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
