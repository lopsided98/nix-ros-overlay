
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-melodic-ypspur";
  version = "1.19.0-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/melodic/ypspur/1.19.0-1.tar.gz";
    name = "1.19.0-1.tar.gz";
    sha256 = "0e257544766ad78dfbf073aa2f6896255e02f69f9a64fd813da4689f643e399a";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin readline ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
