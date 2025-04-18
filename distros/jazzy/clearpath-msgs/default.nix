
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-motor-msgs, clearpath-platform-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-msgs";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/jazzy/clearpath_msgs/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "0f6c7df39503f3b4c6121be20b748b0174f52f5215a955e8426cea6fcbb07743";
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
