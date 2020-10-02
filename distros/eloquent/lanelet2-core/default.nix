
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, eigen, gtest, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-eloquent-lanelet2-core";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/eloquent/lanelet2_core/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "5a6a7dcbc841e7907620d1104ba4b929cc5ada6c0b6a3ea34aafa1666fe48b4b";
  };

  buildType = "catkin";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost eigen mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Lanelet2 core module'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
