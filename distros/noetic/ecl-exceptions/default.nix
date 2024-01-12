
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-noetic-ecl-exceptions";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_exceptions/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "628711cbc195b9e839014887790d1ac2f793025c99e8f1bf1d84ed9cb8391d17";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Template based exceptions - these are simple and practical
     and avoid the proliferation of exception types. Although not
     syntatactically ideal, it is convenient and eminently practical.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
