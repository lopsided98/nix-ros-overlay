
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-ivcon";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ivcon-release/archive/release/melodic/ivcon/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "cbf6855c3a967f5e124a3ea7c6c954bbb57345030d77b22e2f76a77a17bcd3f3";
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
