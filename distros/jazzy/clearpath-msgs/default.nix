
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-motor-msgs, clearpath-platform-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-msgs";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/jazzy/clearpath_msgs/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "1a884ac14be9690434a627061d5ae2bc8aa18cff4338b471434d67892ccb2eb8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-motor-msgs clearpath-platform-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for Clearapth messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
