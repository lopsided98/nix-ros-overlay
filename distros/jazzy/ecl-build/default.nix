
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-license }:
buildRosPackage {
  pname = "ros-jazzy-ecl-build";
  version = "1.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/jazzy/ecl_build/1.0.3-5.tar.gz";
    name = "1.0.3-5.tar.gz";
    sha256 = "372f79ce5171da5d5588f9b02aad9e2622692a2221b692fa21434cc7aaeafe59";
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
