
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-melodic-ypspur";
  version = "1.20.2-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/melodic/ypspur/1.20.2-1.tar.gz";
    name = "1.20.2-1.tar.gz";
    sha256 = "f53c5d73a3a604bbd5f2e1bd286a16d094a8541c428e355129289145da471647";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin readline ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
