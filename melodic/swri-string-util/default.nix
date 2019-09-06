
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin }:
buildRosPackage {
  pname = "ros-melodic-swri-string-util";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_string_util/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "2f57d2124997f42d4f99f0bf88c286b1a39d45d8d7a3bffaba7d5d288c565fa8";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_string_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
