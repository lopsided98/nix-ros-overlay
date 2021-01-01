
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-ivcon";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ivcon-release/archive/release/kinetic/ivcon/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "e5fcd7bf432c4c2d73b6bf851b4e88a055a05cd88cb15a90b96a6d3b38847489";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mesh Conversion Utility

Used to generate '.iv' files from '.stl' files.  This package has not
been changed since 2001 and appears to be very stable.  We plan on
keeping this package in this revision for mesh conversions.  This
package is only available as a single source file for download.  There
are no local modifications to this package.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
