
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-can-msg-filters, dataspeed-can-tools, dataspeed-can-usb }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "8015e12e78f9d3b328e1e9615ec32a986134c4ed429f6678e3fb82379feefbed";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dataspeed-can-msg-filters dataspeed-can-tools dataspeed-can-usb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN bus tools using Dataspeed hardware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
