
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-melodic-ypspur";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/melodic/ypspur/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "5a4777f609a182cc8393cccbb8f3338b78c4b57529569264ad7b29e4ab71dc17";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin readline ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
