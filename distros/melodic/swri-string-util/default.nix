
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest }:
buildRosPackage {
  pname = "ros-melodic-swri-string-util";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_string_util/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "561a17dee7a71ebba0151ab2a90d7bf3cd75a4a4fdfd05564a86ac89d34b3bce";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_string_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
