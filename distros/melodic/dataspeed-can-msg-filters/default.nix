
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can-msg-filters";
  version = "1.0.14-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can_msg_filters/1.0.14-1.tar.gz";
    name = "1.0.14-1.tar.gz";
    sha256 = "2df46f943fa38c264b690f4594fb684e248d51211ec3ed2ae14136f0921ad755";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ can-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time synchronize multiple CAN messages to get a single callback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
