
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-humble-ecl-tools";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/humble/ecl_tools/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "4e48449cbb43df72c083567fc328623d584ea69a4d0c9c98801e9f61674a2330";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-build ecl-license ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tools and utilities for ecl development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
