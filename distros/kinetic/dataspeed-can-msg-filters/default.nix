
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-can-msg-filters";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/kinetic/dataspeed_can_msg_filters/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "a5c03ec73256b4998b53a84268e767a3d29e7798a9a87b87698b2cc02d6bf918";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ can-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time synchronize multiple CAN messages to get a single callback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
