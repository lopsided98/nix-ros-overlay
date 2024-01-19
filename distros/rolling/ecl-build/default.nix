
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-license }:
buildRosPackage {
  pname = "ros-rolling-ecl-build";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/rolling/ecl_build/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "099a72e5994cf01cbba82bbb7a4c0adb7ce05ba8c5afeddf26d60c1f132894a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Collection of cmake/make build tools primarily for ecl development itself, but also
     contains a few cmake modules useful outside of the ecl.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
