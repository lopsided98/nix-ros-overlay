
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-ivcon";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ivcon-release/archive/release/noetic/ivcon/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "5d5b97eb47311712f506d691bb1b15040782d752d70d8f022220731ffabd9aab";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mesh Conversion Utility

Used to generate '.iv' files from '.stl' files.  This package has not
been changed since 2001 and appears to be very stable.  We plan on
keeping this package in this revision for mesh conversions.  This
package is only available as a single source file for download.  There
are no local modifications to this package.'';
    license = with lib.licenses; [ "GPL" ];
  };
}
