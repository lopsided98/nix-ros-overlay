
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-license }:
buildRosPackage {
  pname = "ros-kilted-ecl-build";
  version = "1.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/kilted/ecl_build/1.0.3-5.tar.gz";
    name = "1.0.3-5.tar.gz";
    sha256 = "39ef7952dbab1ae09ff531955fef73f7e6edfd5b9f020689dbcaa138fea69885";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Collection of cmake/make build tools primarily for ecl development itself, but also
     contains a few cmake modules useful outside of the ecl.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
