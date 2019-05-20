
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-ulc-can, dataspeed-ulc-msgs }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-ulc";
  version = "0.0.4-r1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/melodic/dataspeed_ulc/0.0.4-1.tar.gz;
    sha256 = "af1df86c0a3c7bf3149e94f3eec80104933eb75b0fe9e1a639ffbc1a71aeac95";
  };

  propagatedBuildInputs = [ dataspeed-ulc-can dataspeed-ulc-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN interface to the Universal Lat/Lon Controller (ULC) firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
