
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, ecl-build, ecl-exceptions, ecl-license, ament-cmake-ros, ecl-config }:
buildRosPackage {
  pname = "ros-dashing-ecl-formatters";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_formatters/1.0.4-1.tar.gz;
    sha256 = "c40a4dcec7b8e9aa79d729f2cc9d186e5a3b295c4b17b21d13f5be15951ee075";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-converters ecl-build ecl-exceptions ecl-license ecl-config ];
  propagatedBuildInputs = [ ecl-exceptions ecl-converters ecl-license ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The formatters here simply format various input types to a specified
   text format. They can be used with most streaming types (including both
   ecl and stl streams).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
