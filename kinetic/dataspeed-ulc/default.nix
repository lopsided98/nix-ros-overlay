
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-ulc-can, dataspeed-ulc-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-ulc";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/kinetic/dataspeed_ulc/0.0.3-0.tar.gz;
    sha256 = "7e552aacf7439969d159d873ae7f69a4f0f1b8290ff3f8284f633cb19598a6d4";
  };

  propagatedBuildInputs = [ dataspeed-ulc-can dataspeed-ulc-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN interface to the Universal Lat/Lon Controller (ULC) firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
