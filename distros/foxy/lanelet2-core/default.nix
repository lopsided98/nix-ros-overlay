
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, eigen, gtest, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-foxy-lanelet2-core";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/foxy/lanelet2_core/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "ab8ea0263187d6af073ae087e87ef30dbe0c60eb0d1e895ee81617f4ec1faa35";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost eigen mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Lanelet2 core module'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
