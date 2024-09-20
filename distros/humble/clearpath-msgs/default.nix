
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-msgs }:
buildRosPackage {
  pname = "ros-humble-clearpath-msgs";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/humble/clearpath_msgs/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "68a1d94888e10affea8bd632ae7b3b307d25a01d7ea9d6a2f81a85774d95ae22";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-platform-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for Clearapth messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
