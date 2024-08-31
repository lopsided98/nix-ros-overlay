
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-iron-gtsam";
  version = "4.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/iron/gtsam/4.2.0-6.tar.gz";
    name = "4.2.0-6.tar.gz";
    sha256 = "11508ded4e8060e29e25ef145b13ce27335fba4548eca0635278026f271a8b5d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen tbb_2021_11 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "gtsam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
