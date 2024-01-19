
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-iron-gtsam";
  version = "4.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/iron/gtsam/4.2.0-5.tar.gz";
    name = "4.2.0-5.tar.gz";
    sha256 = "b297a8cb85344b23f1424e03a38fdb3b18516f5a61dc1f54b80be25cfd50b0d1";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake eigen tbb_2021_8 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''gtsam'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
