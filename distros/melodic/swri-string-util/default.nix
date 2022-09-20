
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest }:
buildRosPackage {
  pname = "ros-melodic-swri-string-util";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_string_util/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "ea34be12aa11141705af1896728a59decfc1f4886b76b38af405f9c9c7d13345";
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
