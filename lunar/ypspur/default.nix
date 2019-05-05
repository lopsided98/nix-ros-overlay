
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, readline, catkin, cmake }:
buildRosPackage {
  pname = "ros-lunar-ypspur";
  version = "1.15.3";

  src = fetchurl {
    url = https://github.com/openspur/yp-spur-release/archive/release/lunar/ypspur/1.15.3-0.tar.gz;
    sha256 = "d1fd9c9b6297db6b0e7836ff6809d0773f0dc66f7bc9b04d475eae8b7041f2ce";
  };

  buildInputs = [ readline ];
  propagatedBuildInputs = [ readline catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
