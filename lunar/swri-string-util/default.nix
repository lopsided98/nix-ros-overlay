
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin }:
buildRosPackage {
  pname = "ros-lunar-swri-string-util";
  version = "2.9.0-r1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_string_util/2.9.0-1.tar.gz;
    sha256 = "2149db742500d7cc89bfb6e77caffd7973b3d7a7e507a3a4a3b347356efac180";
  };

  checkInputs = [ rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_string_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
