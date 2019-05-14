
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, readline, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-ypspur";
  version = "1.16.0-r1";

  src = fetchurl {
    url = https://github.com/openspur/yp-spur-release/archive/release/melodic/ypspur/1.16.0-1.tar.gz;
    sha256 = "25896b5bc94699faa2318d80f78b857fa7bdd36444f7941a34947ad970a3f211";
  };

  buildInputs = [ readline ];
  propagatedBuildInputs = [ readline catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
