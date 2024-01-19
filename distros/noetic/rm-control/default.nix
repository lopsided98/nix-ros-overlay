
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rm-common, rm-dbus, rm-description, rm-hw, rm-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-control";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_control/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "16486d50830cdb8fc78292e7f8249c60bf0966a09d505f29116511c9ecef87fc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rm-common rm-dbus rm-description rm-hw rm-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package of rm_control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
