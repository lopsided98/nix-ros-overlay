
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest }:
buildRosPackage {
  pname = "ros-noetic-swri-string-util";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_string_util/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "e6a8cea407bfe527a0eca5c37b759a4d2d74d55eb6c784a57cdacae8f3219b3a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_string_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
