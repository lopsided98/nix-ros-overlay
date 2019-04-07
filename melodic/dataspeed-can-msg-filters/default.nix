
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, can-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can-msg-filters";
  version = "1.0.12";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can_msg_filters/1.0.12-0.tar.gz;
    sha256 = "042a76185f2ede3e557deb37f3dad0b56eaa8f7e25e5fa31c4d333e16c3ec082";
  };

  buildInputs = [ can-msgs roscpp ];
  propagatedBuildInputs = [ can-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time synchronize multiple CAN messages to get a single callback'';
    #license = lib.licenses.BSD;
  };
}
