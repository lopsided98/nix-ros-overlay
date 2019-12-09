
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ecl-exceptions, ecl-config, ecl-build, ecl-converters }:
buildRosPackage {
  pname = "ros-crystal-ecl-formatters";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_formatters/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "b965714bbb869bbbfe9ecf925fa6e2f6e1275d8ff764f9e8f93110a00609cbe0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-exceptions ecl-config ecl-build ecl-converters ];
  propagatedBuildInputs = [ ecl-license ecl-exceptions ecl-config ecl-converters ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The formatters here simply format various input types to a specified
   text format. They can be used with most streaming types (including both
   ecl and stl streams).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
