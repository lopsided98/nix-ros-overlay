
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-noetic-swri-serial-util";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_serial_util/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "0cde1f14016971d8008db6d795bb75a5a9484878a25e05e5f6e122fc267b7558";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "swri_serial_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
