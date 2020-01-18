
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-can-msg-filters";
  version = "1.0.12";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/kinetic/dataspeed_can_msg_filters/1.0.12-0.tar.gz";
    name = "1.0.12-0.tar.gz";
    sha256 = "6015e319320d8aeab0fa5e15b9abcf98ed273876d12d16cf9b058ab52961b8a0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ can-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time synchronize multiple CAN messages to get a single callback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
