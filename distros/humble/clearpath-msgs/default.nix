
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-motor-msgs, clearpath-platform-msgs }:
buildRosPackage {
  pname = "ros-humble-clearpath-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/humble/clearpath_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "455a3135eac58ab2c0d71ad0767a694e1a60ee02ef4af3dce744514ffbe7b984";
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
