
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-converters, ecl-exceptions, ecl-license }:
buildRosPackage {
  pname = "ros-noetic-ecl-formatters";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_formatters/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "ba5fde09f5c98585e99e3d20dce7f757fa7c37260b500108b7069b5a40ee32d3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-config ecl-converters ecl-exceptions ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The formatters here simply format various input types to a specified
   text format. They can be used with most streaming types (including both
   ecl and stl streams).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
