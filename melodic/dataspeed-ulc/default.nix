
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-ulc-can, dataspeed-ulc-msgs }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-ulc";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/melodic/dataspeed_ulc/0.0.3-0.tar.gz;
    sha256 = "471b98597bb7b5f02af67b0c268f2285f4defa360d371091972f5d826d2f25e4";
  };

  propagatedBuildInputs = [ dataspeed-ulc-can dataspeed-ulc-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN interface to the Universal Lat/Lon Controller (ULC) firmware'';
    #license = lib.licenses.BSD;
  };
}
