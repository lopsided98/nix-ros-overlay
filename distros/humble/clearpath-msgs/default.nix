
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-msgs }:
buildRosPackage {
  pname = "ros-humble-clearpath-msgs";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/humble/clearpath_msgs/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "a55f459d96d9ea0214420798560f041d3290068d5b395a68ce605b5b02f286dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-platform-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for Clearapth messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
